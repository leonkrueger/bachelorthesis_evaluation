"""
Creates the data to evaluate the performance of the 3 database scenarios for the table prediction task.
This scripts creates 3 datasets, 1 for each database scenario.
If you want to evaluate different query_alterations, you should use different subfolders.

``db_folder`` specifies where the processed evaluation databases are (should not be changed)
``num_data_points_per_db`` specifies how many insertions from each db should be included in the dataset
``query_alterations`` specifies how the insertions should be altered (only the ratio of alterations should be changed)
``dataset_folder`` specifies the folder in which the datasets should be dumped
"""

import copy
import json
import os
import traceback
from random import Random
from typing import Any

from util.adjustments import Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table, insertion_to_string

db_folder = "data"
num_data_points_per_db = 100
query_alterations = [(Adjustments.DELETE_TABLE, 1.0)]
dataset_folder = os.path.join(
    "further_evaluation",
    "error_cases_missing_tables",
)

random = Random()

experiment_input_files = [
    "table_not_in_database",
    "table_in_database",
    "different_name_in_database",
]

with open(
    os.path.join(db_folder, "table_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    synonyms = json.load(synonyms_file)


def apply_alterations_to_query(query: dict[str, Any]) -> None:
    """Applies the alterations specified in query_alterations"""
    for alteration, probability in query_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def apply_alterations_to_state(
    table_name: str,
    database_state: dict[str, list[str]],
    synonyms: list[str],
) -> tuple[dict[str, list[str]], str]:
    """Applies a random scenario to each table"""
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
        expected_table_name = table_name
        database_state_for_query[expected_table_name] = correct_table
    elif experiment_input_file == "different_name_in_database":
        synonym_used = random.choice(synonyms) if len(synonyms) > 0 else table_name
        expected_table_name = synonym_used
        database_state_for_query[expected_table_name] = correct_table
    else:
        expected_table_name = table_name

    # Shuffle entries so that the correct table is not always at the end
    database_state_items = list(database_state_for_query.items())
    random.shuffle(database_state_items)

    return dict(database_state_items), expected_table_name


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
        random.randint(0, min(3, len(queries_in_table))),
    )
    # Parse them so that the values can be used
    parsed_rows = [parse_insert_query(query) for query in random_queries]
    # Check that the currently added row is not in the selected rows
    parsed_rows = [row for row in parsed_rows if row["values"][0] != current_values]
    # Return the csv string of these rows
    return "\n".join([";".join(row["values"][0]) for row in parsed_rows])


def get_data_for_one_database(database_file_path: str) -> list[dict[str, str]]:
    data = []

    try:
        queries = []
        database_state = {}

        with open(database_file_path, encoding="utf-8") as queries_file:
            queries_file_content = queries_file.read()

            table_name = ""
            columns = []

            # Read all insertions
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

        # Sample data points from all queries and create evaluation data
        for query, table_name, columns in random.sample(
            queries, min(num_data_points_per_db, len(queries))
        ):
            parsed_query = parse_insert_query(query)
            parsed_query["table"] = table_name
            parsed_query["columns"] = columns
            # Every insert statement contains only one row
            parsed_query["values"] = parsed_query["values"][0]
            apply_alterations_to_query(parsed_query)
            query_str = insertion_to_string(parsed_query)

            database_state_for_insertion, expected_table_name = (
                apply_alterations_to_state(
                    table_name,
                    database_state,
                    synonyms[
                        os.path.normpath(database_file_path).split(os.path.sep)[-1][:-4]
                    ][table_name],
                )
            )
            database_str = (
                "\n".join(
                    [
                        f"Table {table}:\n{';'.join([column for column in columns])}\n"
                        f"{get_csv_string_for_table(queries, table, parsed_query['values'])}"
                        for table, columns in database_state_for_insertion.items()
                    ]
                )
                if len(database_state_for_insertion) > 0
                else "No table exists yet."
            )

            if len(database_str) > 3000:
                continue

            data.append(
                {
                    "query": query_str,
                    "database_state": database_str,
                    "expected_table_name": expected_table_name,
                    "database_file_path": database_file_path,
                }
            )
    except Exception:
        print(traceback.format_exc())
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return random.sample(data, min(num_data_points_per_db, len(data)))


def generate_data_for_input_file(experiment_input_file: str):
    data = []
    for path in os.listdir(db_folder):
        subfolder = os.path.join(db_folder, path)
        if not os.path.isdir(subfolder) or path == "evaluation":
            continue

        database_file = path[path.find("_") + 1 :] + ".sql"
        data.extend(get_data_for_one_database(os.path.join(subfolder, database_file)))

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


if __name__ == "__main__":
    for experiment_input_file in experiment_input_files:
        generate_data_for_input_file(experiment_input_file)
