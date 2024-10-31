import copy
import math
from random import Random
from typing import Any

from util.adjustments import Adjustments
from util.insert_parser import parse_insert
from util.processing_utils import get_data_from_create_table, is_usable_value

random = Random()


def read_all_inserts(file_path: str) -> tuple[list, dict]:
    inserts = []
    database_state = {}

    with open(file_path, encoding="utf-8") as inserts_file:
        inserts_file_content = inserts_file.read()

    table_name = ""
    columns = []

    # Read all inserts
    for statement in inserts_file_content.split(";\n"):
        statement = statement.strip()

        if statement.startswith("CREATE TABLE"):
            _, table_name, _, column_data = get_data_from_create_table(
                statement, use_mysql_quotes=False
            )
            columns = [column[0] for column in column_data]
            database_state[table_name] = columns

        if statement.startswith("INSERT"):
            inserts.append((statement, table_name, columns))

    return inserts, database_state


def apply_alterations_to_insert(
    insert: dict[str, Any], insert_alterations: list[tuple[Adjustments, float]]
) -> None:
    """Applies the alterations specified in insert_alterations"""
    for alteration, probability in insert_alterations:
        if random.random() > probability:
            continue

        if alteration == Adjustments.DELETE_TABLE:
            del insert["table"]
        elif alteration == Adjustments.DELETE_COLUMN:
            del insert["columns"]


def apply_alterations_to_state_table_prediction(
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
    database_state_for_insert = copy.deepcopy(database_state)

    # Change database state
    correct_table = database_state_for_insert[table_name]

    del database_state_for_insert[table_name]
    database_state_for_insert = dict(
        random.sample(
            list(database_state_for_insert.items()),
            random.randint(0, len(database_state_for_insert.items())),
        )
    )

    if scenario == 0:
        expected_table_name = table_name
    elif scenario == 1:
        expected_table_name = table_name
        database_state_for_insert[expected_table_name] = correct_table
    elif scenario == 2:
        synonym_used = random.choice(synonyms) if len(synonyms) > 0 else table_name
        expected_table_name = synonym_used
        database_state_for_insert[expected_table_name] = correct_table

    # Shuffle entries so that the correct table is not always at the end
    database_state_items = list(database_state_for_insert.items())
    random.shuffle(database_state_items)

    return dict(database_state_items), expected_table_name


def apply_alterations_to_state_column_mapping(
    columns: list[str],
    synonyms: dict[str, list[str]],
) -> tuple[list[str], list[str]]:
    """Applies a random scenario to each column"""
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
    inserts: list[tuple[Any, str, list[str]]],
    table_name: str,
    current_values: list[str],
) -> str:
    # Take all inserts from the specified table
    inserts_in_table = [insert[0] for insert in inserts if insert[1] == table_name]
    # Randomly select a few of them
    random_inserts = random.sample(
        inserts_in_table,
        random.randint(0, min(3, len(inserts_in_table))),
    )
    # Parse them so that the values can be used
    parsed_rows = [parse_insert(insert)["values"][0] for insert in random_inserts]
    # Check that the currently added row is not in the selected rows
    parsed_rows = [row for row in parsed_rows if row != current_values]
    # Return the csv string of these rows
    return "\n".join([";".join(row) for row in parsed_rows])


def get_database_str(
    database_state: dict[str, list[str]],
    inserts: list[tuple[Any, str, list[str]]],
    current_values: list[str],
) -> str:
    return (
        "\n".join(
            [
                f"Table {table}:\n{';'.join([column for column in columns])}\n"
                f"{get_csv_string_for_table(inserts, table, current_values)}"
                for table, columns in database_state.items()
            ]
        )
        if len(database_state) > 0
        else "No table exists yet."
    )


def get_table_string(
    inserts: list[tuple[Any, str, list[str]]],
    table_name: str,
    all_columns: list[str],
    table_columns_new_names: list[str],
    table_columns_old_names: list[str],
    current_values: list[str],
) -> str:
    # Take all inserts from the specified table
    inserts_in_table = [insert[0] for insert in inserts if insert[1] == table_name]
    # Randomly select a few of them
    random_inserts = random.sample(
        inserts_in_table,
        random.randint(0, min(3, len(inserts_in_table))),
    )
    # Parse them so that the values can be used
    parsed_rows = [parse_insert(insert) for insert in random_inserts]
    # Check that the currently added row is not in the selected rows
    parsed_rows = [row for row in parsed_rows if row["values"][0] != current_values]
    # Select columns that should be in the database table
    rows_with_filtered_columns = [[] for i in range(len(parsed_rows))]
    for table_column in table_columns_old_names:
        column_index = all_columns.index(table_column)
        for row_index, row in enumerate(parsed_rows):
            rows_with_filtered_columns[row_index].append(row["values"][0][column_index])
    # Return the csv string of these rows
    # return f"Table {table_name}:\n{';'.join(table_columns_new_names)}\n" + "\n".join(
    #     [";".join(row) for row in rows_with_filtered_columns]
    # )
    return f"Table {table_name}:\n" + "\n".join(
        [
            f"Column {column_name}, Example values: [{', '.join([row[column_index] for row in rows_with_filtered_columns if is_usable_value(row[column_index])])}]"
            for column_index, column_name in enumerate(table_columns_new_names)
        ]
    )
