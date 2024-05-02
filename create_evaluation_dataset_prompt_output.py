import copy
import json
import math
import os
from random import Random
from typing import Any

from util.adjustments import EXPERIMENTS, Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

folder = "data"
num_data_points = 100
query_alterations = [(Adjustments.DELETE_TABLE, 0.0)]
experiment = EXPERIMENTS["finetuning_missing_tables"]

random = Random(3514)


def apply_alterations(query: dict[str, Any]) -> None:
    """Applies the alterations specified in the dict query_alterations"""
    for alteration, probability in query_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def get_data_for_one_database(database_file_path: str) -> list[dict[str, str]]:
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
            queries, min(num_data_points, len(queries))
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

            # CHANGE THIS FOR DIFFERENT TESTS
            correct_table = database_state_for_query[table_name]
            del database_state_for_query[table_name]
            database_state_for_query = dict(
                random.sample(
                    list(database_state_for_query.items()),
                    random.randint(0, len(database_state_for_query.items())),
                )
            )
            database_state_for_query[table_name] = correct_table

            data.append(
                {
                    "query": query_str,
                    "database_state": database_state_for_query,
                    "expected_table_name": table_name,
                }
            )

        print(f"\033[92mProcessed database {database_file_path}\033[0m")
    except Exception:
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return random.sample(data, min(num_data_points, len(data)))


data = []
for path in os.listdir(folder):
    subfolder = os.path.join(folder, path)
    if (
        not os.path.isdir(subfolder)
        or path == "evaluation"
        or ("databases" in experiment and not path in experiment["databases"])
    ):
        continue

    database_file = path[path.find("_") + 1 :] + ".sql"
    data.extend(get_data_for_one_database(os.path.join(subfolder, database_file)))

random.shuffle(data)

# Dump fine tuning data
dataset_folder = os.path.join(
    "further_evaluation",
    "error_cases_missing_tables",
)
experiment_input_file_path = "different_name_in_database.json"

with open(
    os.path.join(
        dataset_folder,
        experiment_input_file_path,
    ),
    mode="w",
    encoding="utf-8",
) as fine_tuning_data_file:
    json.dump(data, fine_tuning_data_file)

for strategy in experiment["strategies"]:
    os.makedirs(os.path.join(dataset_folder, strategy), exist_ok=True)
    open(
        os.path.join(dataset_folder, strategy, "results_" + experiment_input_file_path),
        mode="w",
        encoding="utf-8",
    ).close()
