"""
Creates the data used for the generation of synonyms.
``data_source`` attribute specifies for which databases synonyms should be created and can be either "fine_tuning" or "evaluation".
``table_or_column`` attribute specified if the synonyms should be created for the tables or columns and can be either "table" or "column".
"""

import json
import os
import traceback
from collections import defaultdict
from random import Random

from util.insert_parser import parse_insert
from util.processing_utils import get_data_from_create_table, insert_to_string

data_source = "fine_tuning"
table_or_column = "table"

random = Random()


def get_data_for_one_database(
    database_file_path: str, database_name: str
) -> list[dict[str, str]]:
    data = []

    try:
        inserts = defaultdict(lambda: [])
        database_state = {}

        with open(database_file_path, encoding="utf-8") as inserts_file:
            inserts_file_content = inserts_file.read()

            table_name = ""
            columns = []

            # Preprocess all
            for insert in inserts_file_content.split(";\n"):
                insert = insert.strip()

                if insert.startswith("CREATE TABLE"):
                    _, table_name, _, column_data = get_data_from_create_table(
                        insert, use_mysql_quotes=False
                    )
                    columns = [column[0] for column in column_data]
                    database_state[table_name] = columns

                if insert.startswith("INSERT"):
                    inserts[table_name].append(insert)

        for table_name, table_inserts in inserts.items():
            # Sample data point from all inserts
            table_inserts = [insert for insert in table_inserts if len(insert) < 2000]
            inserts = random.choices(table_inserts, k=min(3, len(table_inserts)))
            inserts_as_str = []
            for insert in inserts:
                parsed_insert = parse_insert(insert)
                parsed_insert["table"] = table_name
                parsed_insert["columns"] = database_state[table_name]
                # Every insert statement contains only one row
                parsed_insert["values"] = parsed_insert["values"][0]

                inserts_as_str.append(insert_to_string(parsed_insert))

            data.append(
                {
                    "query": inserts_as_str,
                    "database_name": database_name,
                    "table_name": table_name,
                }
                if table_or_column == "table"
                else {
                    "query": inserts_as_str,
                    "database_name": database_name,
                    "table_name": table_name,
                    "column_names": database_state[table_name],
                }
            )

        print(f"\033[92mProcessed database {database_file_path}\033[0m")
    except Exception as e:
        print(traceback.format_exc())
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return data


def get_data_for_data_source(folder: str) -> list[dict[str, str]]:
    data = []
    for path in os.listdir(folder):
        database_file_path = os.path.join(folder, path)
        if (
            not os.path.isfile(database_file_path)
            or not path.endswith(".sql")
            or path == "gold_standard_input.sql"
            or path == "inserts_only.sql"
        ):
            continue

        data.extend(get_data_for_one_database(database_file_path, path[:-4]))
    return data


if __name__ == "__main__":
    if data_source != "fine_tuning" and data_source != "evaluation":
        raise AttributeError()
    if table_or_column != "table" and table_or_column != "column":
        raise AttributeError()

    if data_source == "fine_tuning":
        folders = [
            os.path.join("fine_tuning", "databases"),
            os.path.join("fine_tuning", "validation_databases"),
        ]
    elif data_source == "evaluation":
        folders = [
            os.path.join("data", folder)
            for folder in os.listdir("data")
            if folder != "evaluation" and os.path.isdir(os.path.join("data", folder))
        ]

    data_sources = ["bird", "spider", "wikidb"]
    data = []
    for folder in folders:
        if data_source == "fine_tuning":
            for data_source in data_sources:
                subfolder = os.path.join(folder, data_source)
                data.extend(get_data_for_data_source(subfolder))
        elif data_source == "evaluation":
            data.extend(get_data_for_data_source(folder))

    with open(
        os.path.join("data", f"{table_or_column}_synonym_generation_data.json"),
        mode="w",
        encoding="utf-8",
    ) as data_file:
        json.dump(data, data_file)
