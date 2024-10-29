import copy
import json
import math
import os
import traceback
from random import Random
from typing import Any

from tqdm import tqdm

from util.adjustments import EXPERIMENTS, Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

db_folder = "data"
num_data_points_per_db = 2  # 100
experiment_input_files = [
    "table_not_in_database",
    "table_in_database",
    "different_name_in_database",
]
query_alterations = [(Adjustments.DELETE_TABLE, 1.0)]
experiment = EXPERIMENTS["finetuning_missing_tables"]

# Dump fine tuning data
dataset_folder = os.path.join(
    "further_evaluation",
    "performance_gpt_tables_deleted",
)

random = Random()

with open(
    os.path.join(db_folder, "table_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    synonyms = json.load(synonyms_file)


def apply_alterations(query: dict[str, Any]) -> None:
    """Applies the alterations specified in the dict query_alterations"""
    for alteration, probability in query_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def get_csv_string_for_table(
    queries: list[tuple[Any, str, list[str]]],
    table_name: str,
    current_values: list[str],
) -> str:
    # Take all query from the specified table
    queries_in_table = [query[0] for query in queries if query[1] == table_name]
    # Randomly select a few of them
    random_queries = random.sample(
        queries_in_table,
        random.randint(min(3, len(queries_in_table)), min(3, len(queries_in_table))),
    )
    # Parse them so that the values can be used
    random_rows = [parse_insert_query(query)["values"][0] for query in random_queries]
    # Check that the currently added row is not in the selected rows
    random_rows = [row for row in random_rows if row != current_values]
    # Return the csv string of these rows
    return "\n".join([";".join(row) for row in random_rows])


def get_data_for_one_database(
    database_file_path: str, experiment_input_file: str
) -> list[dict[str, str]]:
    data = []

    try:
        queries = []
        database_state = {}

        with open(database_file_path, encoding="utf-8") as queries_file:
            queries_file_content = queries_file.read()

            table_name = ""
            columns = []

            # Preprocess all
            for query in queries_file_content.split(";\n"):
                query = query.strip()

                if query.startswith("CREATE TABLE"):
                    _, table_name, _, column_data = get_data_from_create_table(
                        query, use_mysql_quotes=False
                    )
                    columns = [column[0] for column in column_data]
                    database_state[table_name] = columns

                if query.startswith("INSERT"):
                    queries.append((query, table_name, columns))

        # Sample data points from all queries and create fine tuning data
        for query, table_name, columns in random.sample(
            queries, min(num_data_points_per_db, len(queries))
        ):
            parsed_query = parse_insert_query(query)
            parsed_query["table"] = table_name
            parsed_query["columns"] = columns
            # Every insert statement contains only one row
            parsed_query["values"] = parsed_query["values"][0]
            apply_alterations(parsed_query)

            # Create insert statement as string
            table_str = (
                ""
                if "table" not in parsed_query.keys()
                else parsed_query["table"] + " "
            )
            columns_str = (
                ""
                if "columns" not in parsed_query.keys()
                else f"({', '.join(parsed_query['columns'])}) "
            )
            query_str = f"INSERT INTO {table_str}{columns_str} VALUES ({', '.join(parsed_query['values'])});\n"

            # Create database state
            database_state_for_query = copy.deepcopy(database_state)

            # Change database state
            if (
                experiment_input_file == "table_in_database"
                or experiment_input_file == "different_name_in_database"
            ):
                correct_table = database_state_for_query[table_name]

            del database_state_for_query[table_name]
            database_state_for_query = dict(
                random.sample(
                    list(database_state_for_query.items()),
                    random.randint(0, len(database_state_for_query.items())),
                )
            )

            if experiment_input_file == "table_in_database":
                database_state_for_query[table_name] = correct_table
            elif experiment_input_file == "different_name_in_database":
                table_synonyms = synonyms[
                    os.path.normpath(database_file_path).split(os.path.sep)[-1][:-4]
                ][table_name]
                synonym_used = (
                    random.choice(table_synonyms)
                    if len(table_synonyms) > 0
                    else query["table"]
                )
                database_state_for_query[synonym_used] = correct_table

            # Shuffle entries so that the correct table is not always at the end
            database_state_items = list(database_state_for_query.items())
            random.shuffle(database_state_items)
            database_str = (
                "\n".join(
                    [
                        f"Table {table}:\n{';'.join([column for column in columns])}\n"
                        f"{get_csv_string_for_table(queries, table, parsed_query['values'])}"
                        for table, columns in database_state_items
                    ]
                )
                if len(database_state_for_query) > 0
                else "No table exists yet."
            )

            if len(database_str) > 3000:
                continue

            data.append(
                {
                    "query": query_str,
                    "database_state": database_str,
                    "expected_table_name": (
                        synonym_used
                        if experiment_input_file == "different_name_in_database"
                        else table_name
                    ),
                    "database_file_path": database_file_path,
                }
            )
    except Exception:
        print(traceback.format_exc())
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return random.sample(data, min(num_data_points_per_db, len(data)))


def generate_data_for_input_file(experiment_input_file: str):
    data = []
    for path in tqdm(os.listdir(db_folder)):
        subfolder = os.path.join(db_folder, path)
        if (
            not os.path.isdir(subfolder)
            or path == "evaluation"
            or ("databases" in experiment and not path in experiment["databases"])
        ):
            continue

        database_file = path[path.find("_") + 1 :] + ".sql"
        data.extend(
            get_data_for_one_database(
                os.path.join(subfolder, database_file), experiment_input_file
            )
        )

    random.shuffle(data)

    os.makedirs(dataset_folder, exist_ok=True)

    print(f"Number of data points created for {experiment_input_file}: {len(data)}")

    with open(
        os.path.join(
            dataset_folder,
            experiment_input_file + ".json",
        ),
        mode="w",
        encoding="utf-8",
    ) as fine_tuning_data_file:
        json.dump(data, fine_tuning_data_file)

    # for strategy in experiment["strategies"]:
    #     os.makedirs(os.path.join(dataset_folder, strategy), exist_ok=True)
    #     open(
    #         os.path.join(
    #             dataset_folder, strategy, "results_" + experiment_input_file + ".json"
    #         ),
    #         mode="w",
    #         encoding="utf-8",
    #     ).close()


for experiment_input_file in tqdm(experiment_input_files):
    generate_data_for_input_file(experiment_input_file)
