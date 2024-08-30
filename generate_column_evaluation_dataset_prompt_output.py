import copy
import json
import math
import os
import traceback
from collections import defaultdict
from random import Random
from typing import Any

from tqdm import tqdm

from util.adjustments import Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table, is_usable_value

db_folder = os.path.join("fine_tuning", "validation_databases")
num_data_points_per_db = 100
query_alterations = [(Adjustments.DELETE_COLUMN, 0.0)]

# Dump fine tuning data
dataset_folder = os.path.join(
    "further_evaluation",
    "v_error_cases_missing_columns",
)

random = Random()

with open(
    os.path.join("fine_tuning", "column_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    synonyms = json.load(synonyms_file)


def apply_alterations_to_query(query: dict[str, Any]) -> None:
    """Applies the alterations specified in the dict query_alterations"""
    for alteration, probability in query_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


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
                    if column in synonyms.keys() and len(synonyms[column]) > 0
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
            queries, min(num_data_points_per_db, len(queries))
        ):
            parsed_query = parse_insert_query(query)
            parsed_query["table"] = table_name

            values = parsed_query["values"][0]
            query_columns, query_values = zip(
                *list(
                    filter(
                        lambda pair: is_usable_value(pair[1]),
                        zip(columns, values),
                    )
                )
            )
            parsed_query["columns"] = list(query_columns)
            # Every insert statement contains only one row
            parsed_query["values"] = list(query_values)

            apply_alterations_to_query(parsed_query)

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

            database_name = os.path.normpath(database_file_path).split(os.path.sep)[-1][
                :-4
            ]
            table_columns, old_column_names = apply_alterations_to_state(
                columns,
                (
                    synonyms[database_name][table_name]
                    if table_name in synonyms[database_name]
                    else defaultdict(lambda: [])
                ),
            )

            table_str = (
                f"Table {table_name}:\n{';'.join([column for column in table_columns])}\n"
                + get_csv_string_for_table(
                    queries,
                    table_name,
                    columns,
                    old_column_names,
                    parsed_query["values"],
                )
            )

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
        if not os.path.isdir(subfolder):
            continue

        for database in tqdm(os.listdir(subfolder)):
            database_file = os.path.join(subfolder, database)
            if not os.path.isfile(database_file) or not database_file.endswith(".sql"):
                continue

            data.extend(get_data_for_one_database(database_file))

    random.shuffle(data)

    os.makedirs(dataset_folder, exist_ok=True)

    print(f"Number of data points created: {len(data)}")

    with open(
        os.path.join(
            dataset_folder,
            "evaluation_data_columns_not_deleted" + ".json",
        ),
        mode="w",
        encoding="utf-8",
    ) as fine_tuning_data_file:
        json.dump(data, fine_tuning_data_file)


generate_data()
