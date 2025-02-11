"""
Creates the data to evaluate the performance of the 3 database scenarios for the table prediction task.
This scripts creates 3 datasets, 1 for each database scenario.
If you want to evaluate different insert_alterations, you should use different subfolders.

``db_folder`` specifies where the processed evaluation databases are (should not be changed)
``num_data_points_per_db`` specifies how many inserts from each db should be included in the dataset
``insert_alterations`` specifies how the inserts should be altered (only the ratio of alterations should be changed)
``dataset_folder`` specifies the folder in which the datasets should be dumped
"""

import json
import os
import traceback
from random import Random

from util.adjustments import Adjustments
from util.generate_utils import (
    apply_alterations_to_insert,
    apply_alterations_to_state_table_prediction,
    get_database_str,
    read_all_inserts,
)
from util.insert_parser import parse_insert
from util.processing_utils import insert_to_string

db_folder = "data"
num_data_points_per_db = 100
insert_alterations = [(Adjustments.DELETE_TABLE, 1.0)]
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
        inserts, database_state = read_all_inserts(database_file_path)

        # Sample data points from all inserts and create evaluation data
        for insert, table_name, columns in random.sample(
            inserts, min(num_data_points_per_db, len(inserts))
        ):
            parsed_insert = parse_insert(insert)
            parsed_insert["table"] = table_name
            parsed_insert["columns"] = columns
            # Every insert statement contains only one row
            parsed_insert["values"] = parsed_insert["values"][0]
            apply_alterations_to_insert(parsed_insert, insert_alterations)
            insert_str = insert_to_string(parsed_insert)

            database_state_for_insert, expected_table_name = (
                apply_alterations_to_state_table_prediction(
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
                database_state_for_insert, inserts, parsed_insert["values"]
            )

            if len(database_str) > 3000:
                continue

            data.append(
                {
                    "query": insert_str,
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
