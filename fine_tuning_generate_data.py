"""
!!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

Creates the fine-tuning data.

``name`` needs to be the correct key in the FINE_TUNING dictionary (currently 'missing_tables' or 'missing_columns')
``file_suffix`` is added to the end of the path (useful if datasets are generated for the same model)
``generate_validation_data`` specifies if validation (True) or fine-tuning (False) data should be generated
``fine_tuning_data_points`` specifies the number of inserts used for fine-tuning
``validation_data_points`` specifies the number of inserts used for validation
``data_sources`` should contain all subfolders of fine_tuning/databases that are used to generate the data
"""

import json
import math
import os
import traceback
from collections import defaultdict
from random import Random

from tqdm import tqdm

from util.adjustments import FINE_TUNING
from util.generate_utils import (
    apply_alterations_to_insert,
    apply_alterations_to_state_column_mapping,
    apply_alterations_to_state_table_prediction,
    get_database_str,
    get_table_string,
    read_all_inserts,
)
from util.insert_parser import parse_insert
from util.processing_utils import insert_to_string, is_usable_value

name = "missing_tables"
file_suffix = "_csv_columns_deleted"
generate_validation_data = True
fine_tuning_data_points = 12000
validation_data_points = 150
data_sources = ["bird", "spider", "wikidb"]

random = Random()


def generate_table_prediction_prompt(
    insert: str,
    table_name: str,
    table_columns: str,
    inserts: list,
    database_state: dict[str, list[str]],
    synonyms: dict[str, dict[str, list[str]]],
    path: str,
) -> tuple[str, str]:
    parsed_insert = parse_insert(insert)
    parsed_insert["table"] = table_name
    parsed_insert["columns"] = table_columns
    # Every insert statement contains only one row
    parsed_insert["values"] = parsed_insert["values"][0]

    apply_alterations_to_insert(parsed_insert, FINE_TUNING[name])
    insert_str = insert_to_string(parsed_insert)

    database_state_for_insert, expected_table_name = (
        apply_alterations_to_state_table_prediction(
            table_name,
            database_state,
            int(math.floor(3 * random.random())),
            (
                synonyms[path[:-4]][table_name]
                if table_name in synonyms[path[:-4]]
                else []
            ),
        )
    )
    database_str = get_database_str(
        database_state_for_insert, inserts, parsed_insert["values"]
    )

    instruction = (
        "Predict the table for this example:\n"
        f"Query: {insert_str}"
        f"Database State:\n{database_str}"
    )
    response = f"Table: {expected_table_name}"

    return instruction, response


def generate_column_mapping_prompt(
    insert: str,
    table_name: str,
    table_columns: str,
    inserts: list,
    synonyms: dict[str, dict[str, dict[str, list[str]]]],
    path: str,
) -> tuple[str, str]:
    parsed_insert = parse_insert(insert)
    parsed_insert["table"] = table_name

    values = parsed_insert["values"][0]
    insert_columns, insert_values = zip(
        *list(
            filter(
                lambda pair: is_usable_value(pair[1]),
                zip(table_columns, values),
            )
        )
    )
    parsed_insert["columns"] = list(insert_columns)
    # Every insert statement contains only one row
    parsed_insert["values"] = list(insert_values)

    apply_alterations_to_insert(parsed_insert, FINE_TUNING[name])
    insert_str = insert_to_string(parsed_insert)

    altered_table_columns, old_column_names_in_altered_order = (
        apply_alterations_to_state_column_mapping(
            table_columns,
            (
                synonyms[path[:-4]][table_name]
                if table_name in synonyms[path[:-4]]
                else defaultdict(lambda: [])
            ),
        )
    )

    table_str = get_table_string(
        inserts,
        table_name,
        table_columns,
        altered_table_columns,
        old_column_names_in_altered_order,
        parsed_insert["values"],
    )

    correct_predictions = [
        (
            altered_table_columns[old_column_names_in_altered_order.index(column)]
            if column in old_column_names_in_altered_order
            else column
        )
        for column in insert_columns
    ]

    # Predict one column with each prompt
    column_index_to_predict = int(
        math.floor(len(correct_predictions) * random.random())
    )
    instruction = (
        "Predict the column for this value:\n"
        f"Query: {insert_str}\n"
        # f"{table_str}\n"
        # f"Already predicted columns: {', '.join(correct_predictions[:column_index_to_predict])}\n"
        f"Specified column: {insert_columns[column_index_to_predict] if 'columns' in parsed_insert.keys() else 'No column specified'}\n"
        f"Value: {insert_values[column_index_to_predict]}\n"
        f"{table_str}\n"
    )
    response = f"Column: {correct_predictions[column_index_to_predict]}"

    # Predict all columns with one prompt
    # instruction = (
    #     "Predict the columns for this query:\n"
    #     f"Query: {insert_str}\n"
    #     f"{table_str}\n"
    # )
    # response = ";".join(correct_predictions)
    # response = ";".join(
    #     [
    #         f"{value}={column}"
    #         for column, value in zip(correct_predictions, insert_values)
    #     ]
    # )

    return instruction, response


def get_data_for_one_data_source(
    data_sorce_folder: str,
    data_points: int,
    synonyms: dict[str, dict[str, list[str]]],
    validation: bool = False,
) -> list[dict[str, str]]:
    data = []

    databases_folder = os.path.join(
        "fine_tuning",
        "validation_databases" if validation else "databases",
        data_sorce_folder,
    )
    databases = os.listdir(databases_folder)
    data_points_per_database = int(math.ceil(data_points / len(databases)))

    for path in tqdm(databases):
        full_path = os.path.join(databases_folder, path)
        if not os.path.isfile(full_path) or not full_path.endswith(".sql"):
            continue

        inserts, database_state = read_all_inserts(full_path)

        # Sample data points from all inserts and create fine tuning data
        for insert, table_name, table_columns in random.sample(
            inserts, min(data_points_per_database, len(inserts))
        ):
            try:
                if name == "missing_tables":
                    instruction, response = generate_table_prediction_prompt(
                        insert,
                        table_name,
                        table_columns,
                        inserts,
                        database_state,
                        synonyms,
                        path,
                    )
                elif name == "missing_columns":
                    instruction, response = generate_column_mapping_prompt(
                        insert,
                        table_name,
                        table_columns,
                        inserts,
                        synonyms,
                        path,
                    )
            except Exception:
                print(f"\033[91mERROR: {data_sorce_folder}: Database {path}\033[0m")
                print(traceback.format_exc())

            # Prompts over this length often lead to Out Of Memory Errors
            if len(instruction) > 3000:
                continue

            data.append({"Instruction": instruction, "Response": response})

    return random.sample(data, min(fine_tuning_data_points, len(data)))


if __name__ == "__main__":
    with open(
        os.path.join(
            "fine_tuning",
            (
                "table_synonyms.json"
                if name == "missing_tables"
                else "column_synonyms.json"
            ),
        ),
        encoding="utf-8",
    ) as synonyms_file:
        synonyms = json.load(synonyms_file)

    data = []
    data_points_per_source = math.ceil(
        (
            validation_data_points
            if generate_validation_data
            else fine_tuning_data_points
        )
        / len(data_sources)
    )
    for data_source in tqdm(data_sources):
        data.extend(
            get_data_for_one_data_source(
                data_source,
                data_points_per_source,
                synonyms,
                validation=generate_validation_data,
            )
        )

    random.shuffle(data)

    # Dump fine tuning data
    with open(
        os.path.join(
            "fine_tuning",
            "validation_datasets" if generate_validation_data else "datasets",
            (
                f"{name}{file_suffix}.json"
                if generate_validation_data
                else f"{name}_{fine_tuning_data_points}{file_suffix}.json"
            ),
        ),
        mode="w",
        encoding="utf-8",
    ) as dataset_file:
        json.dump(data, dataset_file)
