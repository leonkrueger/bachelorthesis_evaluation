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

from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table, insertion_to_string

data_source = "fine_tuning"
table_or_column = "table"

random = Random()


def get_data_for_one_database(
    database_file_path: str, database_name: str
) -> list[dict[str, str]]:
    data = []

    try:
        queries = defaultdict(lambda: [])
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
                    queries[table_name].append(query)

        for table_name, table_queries in queries.items():
            # Sample data point from all queries
            table_queries = [query for query in table_queries if len(query) < 2000]
            queries = random.choices(table_queries, k=min(3, len(table_queries)))
            queries_as_str = []
            for query in queries:
                parsed_query = parse_insert_query(query)
                parsed_query["table"] = table_name
                parsed_query["columns"] = database_state[table_name]
                # Every insert statement contains only one row
                parsed_query["values"] = parsed_query["values"][0]

                queries_as_str.append(insertion_to_string(parsed_query))

            data.append(
                {
                    "query": queries_as_str,
                    "database_name": database_name,
                    "table_name": table_name,
                }
                if table_or_column == "table"
                else {
                    "query": queries_as_str,
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
