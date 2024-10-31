"""
!!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

Creates the fine-tuning data.

``name`` needs to be the correct key in the FINE_TUNING dictionary (currently 'missing_tables' or 'missing_columns')
``file_suffix`` is added to the end of the path (useful if datasets are generated for the same model)
``generate_validation_data`` specifies if validation (True) or fine-tuning (False) data should be generated
``fine_tuning_data_points`` specifies the number of insertions used for fine-tuning
``validation_data_points`` specifies the number of insertions used for validation
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
    apply_alterations_to_query,
    apply_alterations_to_state_column_mapping,
    apply_alterations_to_state_table_prediction,
    get_database_str,
    get_table_string,
    read_all_insertions,
)
from util.insert_query_parser import parse_insert_query
from util.processing_utils import insertion_to_string, is_usable_value

name = "missing_columns"
file_suffix = ""
generate_validation_data = False
fine_tuning_data_points = 12000
validation_data_points = 150
data_sources = ["bird", "spider", "wikidb"]

random = Random()


def generate_table_prediction_prompt(
    query: str,
    table_name: str,
    table_columns: str,
    queries: list,
    database_state: dict[str, list[str]],
    synonyms: dict[str, dict[str, list[str]]],
    path: str,
) -> tuple[str, str]:
    parsed_query = parse_insert_query(query)
    parsed_query["table"] = table_name
    parsed_query["columns"] = table_columns
    # Every insert statement contains only one row
    parsed_query["values"] = parsed_query["values"][0]

    apply_alterations_to_query(parsed_query, FINE_TUNING[name])
    query_str = insertion_to_string(parsed_query)

    database_state_for_insertion, expected_table_name = (
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
        database_state_for_insertion, queries, parsed_query["values"]
    )

    instruction = (
        "Predict the table for this example:\n"
        f"Query: {query_str}"
        f"Database State:\n{database_str}"
    )
    response = f"Table: {expected_table_name}"

    return instruction, response


def generate_column_mapping_prompt(
    query: str,
    table_name: str,
    table_columns: str,
    queries: list,
    synonyms: dict[str, dict[str, dict[str, list[str]]]],
    path: str,
) -> tuple[str, str]:
    parsed_query = parse_insert_query(query)
    parsed_query["table"] = table_name

    values = parsed_query["values"][0]
    query_columns, query_values = zip(
        *list(
            filter(
                lambda pair: is_usable_value(pair[1]),
                zip(table_columns, values),
            )
        )
    )
    parsed_query["columns"] = list(query_columns)
    # Every insert statement contains only one row
    parsed_query["values"] = list(query_values)

    apply_alterations_to_query(parsed_query, FINE_TUNING[name])
    query_str = insertion_to_string(parsed_query)

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
        queries,
        table_name,
        table_columns,
        altered_table_columns,
        old_column_names_in_altered_order,
        parsed_query["values"],
    )

    correct_predictions = [
        (
            altered_table_columns[old_column_names_in_altered_order.index(column)]
            if column in old_column_names_in_altered_order
            else column
        )
        for column in query_columns
    ]

    # Predict one column with each prompt
    column_index_to_predict = int(
        math.floor(len(correct_predictions) * random.random())
    )
    instruction = (
        "Predict the column for this value:\n"
        f"Query: {query_str}\n"
        # f"{table_str}\n"
        # f"Already predicted columns: {', '.join(correct_predictions[:column_index_to_predict])}\n"
        f"Specified column: {query_columns[column_index_to_predict] if 'columns' in parsed_query.keys() else 'No column specified'}\n"
        f"Value: {query_values[column_index_to_predict]}\n"
        f"{table_str}\n"
    )
    response = f"Column: {correct_predictions[column_index_to_predict]}"

    # Predict all columns with one prompt
    # instruction = (
    #     "Predict the columns for this query:\n"
    #     f"Query: {query_str}\n"
    #     f"{table_str}\n"
    # )
    # response = ";".join(correct_predictions)
    # response = ";".join(
    #     [
    #         f"{value}={column}"
    #         for column, value in zip(correct_predictions, query_values)
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

        queries, database_state = read_all_insertions(full_path)

        # Sample data points from all queries and create fine tuning data
        for query, table_name, table_columns in random.sample(
            queries, min(data_points_per_database, len(queries))
        ):
            try:
                if name == "missing_tables":
                    instruction, response = generate_table_prediction_prompt(
                        query,
                        table_name,
                        table_columns,
                        queries,
                        database_state,
                        synonyms,
                        path,
                    )
                elif name == "missing_columns":
                    instruction, response = generate_column_mapping_prompt(
                        query,
                        table_name,
                        table_columns,
                        queries,
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
