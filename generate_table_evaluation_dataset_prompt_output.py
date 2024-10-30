"""
Creates the data to evaluate the performance of the 3 database scenarios for the table prediction task.
This scripts creates 3 datasets, 1 for each database scenario.
If you want to evaluate different query_alterations, you should use different subfolders.

``db_folder`` specifies where the processed evaluation databases are (should not be changed)
``num_data_points_per_db`` specifies how many insertions from each db should be included in the dataset
``query_alterations`` specifies how the insertions should be altered (only the ratio of alterations should be changed)
``dataset_folder`` specifies the folder in which the datasets should be dumped
"""

import json
import os
import traceback
from random import Random

from util.adjustments import Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import insertion_to_string
from util.table_prediction_utils import (
    apply_alterations_to_query,
    apply_alterations_to_state,
    get_database_str,
    read_all_insertions,
)

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


def get_data_for_one_database(
    database_file_path: str, experiment_input_file: str
) -> list[dict[str, str]]:
    data = []

    try:
        queries, database_state = read_all_insertions(database_file_path)

        # Sample data points from all queries and create evaluation data
        for query, table_name, columns in random.sample(
            queries, min(num_data_points_per_db, len(queries))
        ):
            parsed_query = parse_insert_query(query)
            parsed_query["table"] = table_name
            parsed_query["columns"] = columns
            # Every insert statement contains only one row
            parsed_query["values"] = parsed_query["values"][0]
            apply_alterations_to_query(parsed_query, query_alterations)
            query_str = insertion_to_string(parsed_query)

            database_state_for_insertion, expected_table_name = (
                apply_alterations_to_state(
                    table_name,
                    database_state,
                    (
                        0
                        if experiment_input_file == "table_not_in_database"
                        else (1 if experiment_input_file == "table_in_database" else 2)
                    ),
                    synonyms[
                        os.path.normpath(database_file_path).split(os.path.sep)[-1][:-4]
                    ][table_name],
                )
            )
            database_str = get_database_str(
                database_state_for_insertion, queries, parsed_query["values"]
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
