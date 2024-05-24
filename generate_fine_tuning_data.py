import copy
import io
import json
import math
import os
import re
import tokenize
import traceback
from random import Random
from typing import Any

from tqdm import tqdm

from util.adjustments import FINE_TUNING, Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

name = "missing_tables"
generate_validation_data = False
fine_tuning_data_points = 24000
validation_data_points = 150
data_sources = ["bird", "spider", "wikidb"]

random = Random()


def apply_alterations(
    query: dict[str, Any],
    database_state: dict[str, list[str]],
    synonyms: list[str],
) -> tuple[dict[str, Any], dict[str, list[str]], str]:
    """Applies the alterations specified in the dict FINE_TUNING"""
    scenario = int(math.floor(3 * random.random()))
    if scenario == 0:  # Table not in db
        correct_prediction = query["table"]
    elif scenario == 1:  # Table with correct name in db
        correct_prediction = query["table"]
        table_to_add = database_state[query["table"]]
    elif scenario == 2:  # Table with different name in db
        correct_prediction = (
            random.choice(synonyms) if len(synonyms) > 0 else query["table"]
        )
        table_to_add = database_state[query["table"]]

    del database_state[query["table"]]
    database_state = dict(
        random.sample(
            list(database_state.items()),
            random.randint(0, len(database_state.items())),
        )
    )

    if scenario == 1 or scenario == 2:
        database_state[correct_prediction] = table_to_add

        # Shuffle entries so that the correct table is not always at the end
        database_state_items = list(database_state.items())
        random.shuffle(database_state_items)
        database_state = dict(database_state_items)

    for alteration, probability in FINE_TUNING[name]:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]

    return query, database_state, correct_prediction


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
                        columns_str = ", ".join(
                            [" ".join(column) for column in column_data]
                        )
                        database_state[table_name] = (
                            f"CREATE TABLE {table_name} ({columns_str});"
                        )

                    if query.startswith("INSERT"):
                        queries.append((query, table_name, columns))

            # Sample data points from all queries and create fine tuning data
            for query, table_name, columns in random.sample(
                queries, min(data_points_per_database, len(queries))
            ):
                parsed_query = parse_insert_query(query)
                parsed_query["table"] = table_name
                parsed_query["columns"] = columns
                # Every insert statement contains only one row
                parsed_query["values"] = parsed_query["values"][0]

                parsed_query, database_state_for_query, correct_prediction = (
                    apply_alterations(
                        parsed_query,
                        copy.deepcopy(database_state),
                        (
                            synonyms[path[:-4]][table_name]
                            if table_name in synonyms[path[:-4]]
                            else []
                        ),
                    )
                )

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

                database_str = (
                    "\n".join(
                        [
                            columns  # f"- Table: {table}, Columns: [{', '.join([column for column in columns])}]"
                            for table, columns in database_state_for_query.items()
                        ]
                    )
                    if len(database_state_for_query) > 0
                    else "No table exists yet."
                )

                instruction = (
                    "Predict the table for this example:\n"
                    f"Query: {query_str}"
                    f"Database State:\n{database_str}"
                )
                response = f"Table: {correct_prediction}"

                data.append({"Instruction": instruction, "Response": response})
        except Exception:
            print(f"\033[91mERROR: {data_sorce_folder}: Database {path}\033[0m")
            print(traceback.format_exc())

    return random.sample(data, min(fine_tuning_data_points, len(data)))


with open(
    os.path.join("fine_tuning", "synonyms.json"), encoding="utf-8"
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
        "datasets",
        (
            f"{name}.json"
            if generate_validation_data
            else f"{name}_{fine_tuning_data_points}.json"
        ),
    ),
    mode="w",
    encoding="utf-8",
) as dataset_file:
    json.dump(data, dataset_file)
