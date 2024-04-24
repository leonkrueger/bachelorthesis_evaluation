import io
import json
import math
import os
import tokenize
from random import Random
from typing import Any

from util.adjustments import FINE_TUNING, Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

name = "missing_tables"
num_data_points = 100
data_sources = ["bird", "spider", "wikidb"]

random = Random(6541)


def apply_alterations(query: dict[str, Any]) -> None:
    """Applies the alterations specified in the dict FINE_TUNING"""
    for alteration, probability in FINE_TUNING[name]:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def get_data_for_one_data_source(data_sorce_folder: str) -> list[dict[str, str]]:
    data = []

    databases = os.listdir(os.path.join("fine_tuning", "databases", data_sorce_folder))
    num_data_points_per_database = int(math.ceil(num_data_points / len(databases)))

    for db_index, path in enumerate(databases):
        try:
            full_path = os.path.join(
                "fine_tuning", "databases", data_sorce_folder, path
            )
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
                queries, min(num_data_points_per_database, len(queries))
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
                database_state_for_query = dict(
                    random.sample(
                        list(database_state.items()),
                        random.randint(0, len(database_state.items())),
                    )
                )
                database_str = (
                    "\n".join(
                        [
                            f"- Table: {table}, Columns: [{', '.join([column for column in columns])}]"
                            for table, columns in database_state_for_query.items()
                        ]
                    )
                    if len(database_state_for_query) > 0
                    else "No table exists yet."
                )

                instruction = (
                    "Predict the table for this example:\n"
                    f"Query: {query_str}\n"
                    f"Database State:\n{database_str}"
                )
                response = f"Table: {table_name}"

                data.append({"Instruction": instruction, "Response": response})

            print(
                f"\033[92m{data_sorce_folder}: Processed database {path}, {db_index} / {len(databases)}\033[0m"
            )
        except Exception:
            print(
                f"\033[91mERROR: {data_sorce_folder}: Database {path}, {db_index} / {len(databases)}\033[0m"
            )

    return random.sample(data, min(num_data_points, len(data)))


data = []
for data_source in data_sources:
    data.extend(get_data_for_one_data_source(data_source))

random.shuffle(data)

# Dump fine tuning data
with open(
    os.path.join("fine_tuning", name + ".json"), mode="w", encoding="utf-8"
) as fine_tuning_data_file:
    json.dump(data, fine_tuning_data_file)
