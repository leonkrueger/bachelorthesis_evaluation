import copy
import io
import json
import math
import os
import re
import tokenize
import traceback
from collections import defaultdict
from random import Random
from typing import Any

from tqdm import tqdm

from util.adjustments import FINE_TUNING, Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

name = "missing_columns"
generate_validation_data = False
fine_tuning_data_points = 12000
validation_data_points = 150
data_sources = ["bird", "spider", "wikidb"]

random = Random()


def apply_alterations_to_query(query: dict[str, Any]) -> dict[str, Any]:
    for alteration, probability in FINE_TUNING[name]:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]
    return query


def apply_alterations_to_state(
    columns: list[str],
    synonyms: list[str],
) -> tuple[list[str], list[str]]:
    """Applies the alterations specified in the dict FINE_TUNING"""
    new_column_names = []
    old_column_names = []

    columns = copy.deepcopy(columns)
    random.shuffle(columns)

    for column in columns:
        scenario = int(math.floor(3 * random.random()))
        # Column not in db -> Do nothing
        if scenario == 1:  # Column with correct name in db
            new_column_names.append(column)
            old_column_names.append(column)
        elif scenario == 2:  # Column with different name in db
            new_column_names.append(
                (
                    random.choice(synonyms[column])
                    if len(synonyms[column]) > 0
                    else column
                )
            )
            old_column_names.append(column)

    return new_column_names, old_column_names


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
        try:
            full_path = os.path.join(databases_folder, path)
            if not os.path.isfile(full_path) or not full_path.endswith(".sql"):
                continue

            queries = []
            database_state = {}

            with open(full_path, encoding="utf-8") as queries_file:
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
                queries, min(data_points_per_database, len(queries))
            ):
                parsed_query = parse_insert_query(query)
                parsed_query["table"] = table_name

                values = parsed_query["values"][0]
                query_columns, query_values = zip(
                    *list(
                        filter(
                            lambda pair: pair[1] is not None
                            and pair[1].lower() != "nan"
                            and pair[1].lower() != "'null'",
                            zip(columns, values),
                        )
                    )
                )
                parsed_query["columns"] = list(query_columns)
                # Every insert statement contains only one row
                parsed_query["values"] = list(query_values)

                parsed_query = apply_alterations_to_query(parsed_query)

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
                query_str = f"INSERT INTO {table_str}{columns_str}VALUES ({', '.join(parsed_query['values'])});\n"

                table_columns, old_column_names = apply_alterations_to_state(
                    columns,
                    (
                        synonyms[path[:-4]][table_name]
                        if table_name in synonyms[path[:-4]]
                        else defaultdict(lambda: [])
                    ),
                )

                table_str = (
                    f"Table {table_name}:\n{';'.join(table_columns)}\n"
                    + get_csv_string_for_table(
                        queries,
                        table_name,
                        columns,
                        old_column_names,
                        values,
                    )
                )

                correct_prediction = ";".join(
                    [
                        (
                            table_columns[old_column_names.index(column)]
                            if column in old_column_names
                            else column
                        )
                        for column in query_columns
                    ]
                )

                # instruction = (
                #     "Predict the column for this value:\n"
                #     f"Specified column: {old_column_name if 'columns' in parsed_query.keys() else 'No column specified'}\n"
                #     f"Value: {value}\n"
                #     f"{table_str}\n"
                # )
                # response = f"Column: {correct_prediction}"
                instruction = (
                    "Predict the columns for this query:\n"
                    f"Query: {query_str}\n"
                    f"{table_str}\n"
                )
                response = f"Columns: {correct_prediction}"

                if len(instruction) > 3000:
                    continue

                data.append({"Instruction": instruction, "Response": response})
        except Exception:
            print(f"\033[91mERROR: {data_sorce_folder}: Database {path}\033[0m")
            print(traceback.format_exc())

    return random.sample(data, min(fine_tuning_data_points, len(data)))


with open(
    os.path.join("fine_tuning", "column_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    synonyms = json.load(synonyms_file)

data = []
data_points_per_source = math.ceil(
    (validation_data_points if generate_validation_data else fine_tuning_data_points)
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
            f"{name}_combined_columns.json"
            if generate_validation_data
            else f"{name}_{fine_tuning_data_points}_combined_columns.json"
        ),
    ),
    mode="w",
    encoding="utf-8",
) as dataset_file:
    json.dump(data, dataset_file)
