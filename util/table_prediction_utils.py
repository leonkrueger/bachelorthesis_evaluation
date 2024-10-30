import copy
from random import Random
from typing import Any

from util.adjustments import Adjustments
from util.insert_query_parser import parse_insert_query
from util.processing_utils import get_data_from_create_table

random = Random()


def read_all_insertions(file_path: str) -> tuple[list, dict]:
    queries = []
    database_state = {}

    with open(file_path, encoding="utf-8") as queries_file:
        queries_file_content = queries_file.read()

    table_name = ""
    columns = []

    # Read all insertions
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

    return queries, database_state


def apply_alterations_to_query(
    query: dict[str, Any], query_alterations: list[tuple[Adjustments, float]]
) -> None:
    """Applies the alterations specified in query_alterations"""
    for alteration, probability in query_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del query["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del query["columns"]


def apply_alterations_to_state(
    table_name: str,
    database_state: dict[str, list[str]],
    scenario: int,
    synonyms: list[str],
) -> tuple[dict[str, list[str]], str]:
    """Applies a random scenario to each table
    scenario 0: Table not in database
    scenario 1: Table with correct name in database
    scenario 2: Table with different name in database"""
    # Create database state
    database_state_for_query = copy.deepcopy(database_state)

    # Change database state
    correct_table = database_state_for_query[table_name]

    del database_state_for_query[table_name]
    database_state_for_query = dict(
        random.sample(
            list(database_state_for_query.items()),
            random.randint(0, len(database_state_for_query.items())),
        )
    )

    if scenario == 0:
        expected_table_name = table_name
    elif scenario == 1:
        expected_table_name = table_name
        database_state_for_query[expected_table_name] = correct_table
    elif scenario == 2:
        synonym_used = random.choice(synonyms) if len(synonyms) > 0 else table_name
        expected_table_name = synonym_used
        database_state_for_query[expected_table_name] = correct_table

    # Shuffle entries so that the correct table is not always at the end
    database_state_items = list(database_state_for_query.items())
    random.shuffle(database_state_items)

    return dict(database_state_items), expected_table_name


def get_csv_string_for_table(
    queries: list[tuple[Any, str, list[str]]],
    table_name: str,
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
    parsed_rows = [parse_insert_query(query)["values"][0] for query in random_queries]
    # Check that the currently added row is not in the selected rows
    parsed_rows = [row for row in parsed_rows if row != current_values]
    # Return the csv string of these rows
    return "\n".join([";".join(row) for row in parsed_rows])


def get_database_str(
    database_state: dict[str, list[str]],
    queries: list[tuple[Any, str, list[str]]],
    current_values: list[str],
) -> str:
    return (
        "\n".join(
            [
                f"Table {table}:\n{';'.join([column for column in columns])}\n"
                f"{get_csv_string_for_table(queries, table, current_values)}"
                for table, columns in database_state.items()
            ]
        )
        if len(database_state) > 0
        else "No table exists yet."
    )
