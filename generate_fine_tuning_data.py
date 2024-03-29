import io
import json
import os
import shutil
import tokenize
from curses.ascii import alt
from random import Random
from typing import Any

from util.adjustments import FINE_TUNING, Adjustments
from util.insert_query_parser import parse_insert_query

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

name = "missing_tables"
num_data_points = 1000

random = Random(6541)


def remove_quotes(attribute: str) -> str:
    return (
        attribute[1:-1].replace(" ", "_")
        if attribute[0] == "'" or attribute[0] == '"'
        else attribute
    )


def apply_alterations(query: dict[str, Any]) -> None:
    """Applies the alterations specified in the dict FINE_TUNING"""
    for alteration, probability in FINE_TUNING[name]:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def process_create_statement(query: str) -> tuple[str, list[str]]:
    # Get the column information needed
    attribute_start_index = query.find("(")
    attribute_data = [
        [
            token.string
            for token in tokenize.generate_tokens(io.StringIO(attribute).readline)
            if token.string.strip() != ""
        ]
        for attribute in query[attribute_start_index + 1 : len(query) - 1].split(",\n")
    ]

    # Get table name
    query_table_name_data = [
        token.string
        for token in tokenize.generate_tokens(
            io.StringIO(query[:attribute_start_index]).readline
        )
        if token.string.strip() != ""
    ]
    table_name = remove_quotes(
        query_table_name_data[2]
        if "if" != query_table_name_data[2].lower()
        else query_table_name_data[5]
    )

    # Get attributes of table
    attributes = [
        remove_quotes(attribute[0])
        for attribute in attribute_data
        if attribute[1].lower() != "key"
    ]

    return table_name, attributes


data = []

databases = os.listdir(os.path.join("fine_tuning", "databases"))
num_data_points_per_database = int(num_data_points / len(databases))

for path in databases:
    full_path = os.path.join("fine_tuning", "databases", path)
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

            if query.startswith("CREATE"):
                table_name, columns = process_create_statement(query)
                database_state[table_name] = columns

            if query.startswith("INSERT"):
                queries.append((query, table_name, columns))

    # Sample data points from all queries and create fine tuning data
    for query, table_name, columns in random.sample(
        queries, num_data_points_per_database
    ):
        parsed_query = parse_insert_query(query)
        parsed_query["table"] = table_name
        parsed_query["columns"] = columns
        # Every insert statement contains only one row
        parsed_query["values"] = parsed_query["values"][0]
        apply_alterations(parsed_query)

        # Create insert statement as string
        table_str = (
            "" if "table" not in parsed_query.keys() else parsed_query["table"] + " "
        )
        columns_str = (
            ""
            if "columns" not in parsed_query.keys()
            else f"({', '.join(parsed_query['columns'])}) "
        )
        query_str = f"INSERT INTO {table_str}{columns_str}VALUES ({', '.join(parsed_query['values'])});\n"

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
            else "No table exists yet"
        )

        instruction = (
            "Predict the table for this example:\n"
            f"Query: {query_str}\n"
            f"Database State:\n{database_str}"
        )
        response = f"Table: {table_name}"

        data.append({"Instruction": instruction, "Response": response})


# Dump fine tuning data
with open(
    os.path.join("fine_tuning", name + ".json"), mode="w", encoding="utf-8"
) as fine_tuning_data_file:
    json.dump(data, fine_tuning_data_file)
