"""
Creates the data to evaluate the performance of the 3 database scenarios for the column mapping task.
This script creates 1 dataset containing a mix of the 3 database scenarios. The distinction is done in the evaluation script.

``db_folder`` specifies where the processed evaluation databases are (should not be changed)
``num_data_points_per_db`` specifies how many insertions from each db should be included in the dataset
``query_alterations`` specifies how the insertions should be altered (only the ratio of alterations should be changed)
``dataset_file`` specifies the file in which the dataset should be dumped
"""

import copy
import json
import math
import os
import traceback
from collections import defaultdict
from pathlib import Path
from random import Random
from typing import Any

from util.adjustments import Adjustments
from util.column_mapping_utils import (
    apply_alterations_to_query,
    apply_alterations_to_state,
    get_table_string,
    read_all_insertions,
)
from util.insert_query_parser import parse_insert_query
from util.processing_utils import insertion_to_string, is_usable_value

db_folder = "data"
num_data_points_per_db = 100
query_alterations = [(Adjustments.DELETE_COLUMN, 0.0)]
dataset_file = Path(
    "further_evaluation/error_cases_missing_columns/evaluation_data_columns_not_deleted.json"
)

random = Random()

with open(
    os.path.join(db_folder, "column_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    synonyms = json.load(synonyms_file)


def get_csv_string_for_table(
    queries: list[tuple[Any, str, list[str]]],
    table_name: str,
    all_columns: list[str],
    table_columns_old_names: list[str],
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
    # Select columns that should be in the database table
    rows_with_filtered_columns = [[] for i in range(len(parsed_rows))]
    for table_column in table_columns_old_names:
        column_index = all_columns.index(table_column)
        for row_index, row in enumerate(parsed_rows):
            rows_with_filtered_columns[row_index].append(row["values"][0][column_index])
    # Return the csv string of these rows
    return "\n".join([";".join(row) for row in rows_with_filtered_columns])


def get_data_for_one_database(database_file_path: str) -> list[dict[str, str]]:
    data = []

    try:
        queries, database_state = read_all_insertions(database_file_path)

        # Sample data points from all queries and create evaluation data
        for query, table_name, all_table_columns in random.sample(
            queries, min(num_data_points_per_db, len(queries))
        ):
            parsed_query = parse_insert_query(query)
            parsed_query["table"] = table_name

            # Every insert statement contains only one row
            values = parsed_query["values"][0]
            query_columns, query_values = zip(
                *list(
                    filter(
                        lambda pair: is_usable_value(pair[1]),
                        zip(all_table_columns, values),
                    )
                )
            )
            parsed_query["columns"] = list(query_columns)
            parsed_query["values"] = list(query_values)

            apply_alterations_to_query(parsed_query, query_alterations)
            query_str = insertion_to_string(parsed_query)

            database_name = os.path.normpath(database_file_path).split(os.path.sep)[-1][
                :-4
            ]
            table_columns, old_column_names = apply_alterations_to_state(
                all_table_columns,
                (
                    synonyms[database_name][table_name]
                    if table_name in synonyms[database_name]
                    else defaultdict(lambda: [])
                ),
            )

            table_str = get_table_string(
                queries,
                table_name,
                all_table_columns,
                table_columns,
                old_column_names,
                parsed_query["values"],
            )

            # Prompts over this length often lead to Out Of Memory Errors
            if len(table_str) > 3000:
                continue

            correct_prediction = [
                (
                    table_columns[old_column_names.index(column)]
                    if column in old_column_names
                    else column
                )
                for column in query_columns
            ]

            data.append(
                {
                    "query": query_str,
                    "table_state": table_str,
                    "expected_column_names": correct_prediction,
                    "database_file_path": database_file_path,
                }
            )
    except Exception:
        print(traceback.format_exc())
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return random.sample(data, min(num_data_points_per_db, len(data)))


def generate_data():
    data = []
    for path in os.listdir(db_folder):
        subfolder = os.path.join(db_folder, path)
        if not os.path.isdir(subfolder) or path == "evaluation":
            continue

        database_file = os.path.join(subfolder, path[path.find("_") + 1 :] + ".sql")
        data.extend(get_data_for_one_database(database_file))

    random.shuffle(data)

    os.makedirs(dataset_file.parent, exist_ok=True)

    print(f"Number of data points created: {len(data)}")

    with open(
        dataset_file,
        mode="w",
        encoding="utf-8",
    ) as fine_tuning_data_file:
        json.dump(data, fine_tuning_data_file)


if __name__ == "__main__":
    generate_data()
