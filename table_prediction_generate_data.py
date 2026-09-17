"""
Creates the data to evaluate the performance of the 3 database scenarios for the table prediction task.
This scripts creates 3 datasets, 1 for each database scenario.
If you want to evaluate different insert_alterations, you should use different subfolders.

``db_folder`` specifies where the processed evaluation databases are (should not be changed)
``num_data_points_per_db`` specifies how many inserts from each db should be included in the dataset
``insert_alterations`` specifies how the inserts should be altered (only the ratio of alterations should be changed)
``dataset_folder`` specifies the folder in which the datasets should be dumped
"""

import json
import os
import traceback
import copy
from random import Random
from collections import defaultdict
from typing import Any

from util.adjustments import Adjustments
from util.generate_utils import (
    apply_alterations_to_insert,
    apply_alterations_to_state_table_prediction,
    read_all_inserts,
)
from util.insert_parser import parse_insert
from util.processing_utils import insert_to_string

DB_FOLDER = "data"
NUM_DATA_POINTS_PER_DB = 20
BATCH_SIZE = 5
JOIN_COUNT = 1
INSERT_ALTERATIONS = [(Adjustments.DELETE_TABLE, 0.5), (Adjustments.DELETE_COLUMN, 0.5)]
EVALUATION_FOLDER = os.path.join(
    "further_evaluation",
    "normalization_1",
)

random = Random()

experiment_input_files = [
    "table_not_in_database",
    "table_in_database",
    # "different_name_in_database",
]

with open(
    os.path.join(DB_FOLDER, "table_synonyms_new.json"), encoding="utf-8"
) as table_synonyms_file:
    table_synonyms = json.load(table_synonyms_file)

with open(
    os.path.join(DB_FOLDER, "column_synonyms_new.json"), encoding="utf-8"
) as column_synonyms_file:
    column_synonyms = json.load(column_synonyms_file)


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
    table_names: list[str],
    database_state: dict[str, list[str]],
    scenario: int,
    table_synonyms: dict[str, list[str]],
    column_synonyms: dict[str, dict[str, list[str]]],
) -> tuple[dict[str, list[str]], str]:
    """Applies a random scenario to each table
    scenario 0: Table not in database
    scenario 1: Table with correct name in database
    scenario 2: Table with different name in database"""
    # Create database state
    database_state_for_insert = copy.deepcopy(database_state)

    # Change database state
    correct_tables = {
        table_name: database_state_for_insert[table_name] for table_name in table_names
    }

    for table_name in table_names:
        if table_name in database_state_for_insert:
            del database_state_for_insert[table_name]
    database_state_for_insert = dict(
        random.sample(
            list(database_state_for_insert.items()),
            random.randint(0, len(database_state_for_insert.items())),
        )
    )

    if scenario == 0:
        expected_table_names = table_names
        expected_column_names = list(correct_tables.values())
    elif scenario == 1:
        expected_table_names = table_names
        expected_column_names = list(correct_tables.values())
        for table_name in expected_table_names:
            database_state_for_insert[table_name] = correct_tables[table_name]
    elif scenario == 2:
        expected_table_names = []
        expected_column_names = []
        for table_name in table_names:
            table_synonym_used = (
                random.choice(table_synonyms[table_name])
                if table_name in table_synonyms and len(table_synonyms[table_name]) > 0
                else table_name
            )
            expected_table_names.append(table_synonym_used)
            column_synonyms_used = [
                random.choice(
                    column_synonyms[table_name][column]
                    if table_name in column_synonyms
                    and column in column_synonyms[table_name]
                    and len(column_synonyms[table_name][column]) > 0
                    else column
                )
                for column in correct_tables[table_name]
            ]
            expected_column_names.append(column_synonyms_used)
            database_state_for_insert[table_synonym_used] = column_synonyms_used

    # Shuffle entries so that the correct table is not always at the end
    database_state_items = list(database_state_for_insert.items())
    random.shuffle(database_state_items)

    return dict(database_state_items), expected_table_names, expected_column_names


def get_inserts_for_random_table(inserts_by_table: dict[str, list]):
    # Choose random table
    table_name = random.choice(list(inserts_by_table.keys()))

    # Sample inserts for the chosen table
    inserts = random.sample(
        inserts_by_table[table_name],
        min(BATCH_SIZE, len(inserts_by_table[table_name])),
    )
    # for insert, table_name, columns in random.sample(
    #     inserts_by_table[table_name],
    #     min(BATCH_SIZE, len(inserts_by_table[table_name])),
    # ):
    #     parsed_insert = parse_insert(insert)
    # parsed_insert["table"] = table_name
    # parsed_insert["columns"] = columns
    # inserts.append(parsed_insert)
    return [table_name], inserts


def get_inserts_for_random_join(
    inserts_by_table: dict[str, list], foreign_key_data: list[dict]
):
    if len(foreign_key_data) == 0:
        return "", [], []

    applied_join = random.choice(foreign_key_data)
    if len(applied_join["reference_column_names"]) > 1:
        print("Too many key columns.")

    # Join the two tables
    hashed_reference_table = {}
    for insert in inserts_by_table[applied_join["reference_table_name"]]:
        key_idx = insert["columns"].index(applied_join["reference_column_names"][0])
        hashed_reference_table[insert["values"][0][key_idx]] = insert

    table_names = []
    joined_inserts = []
    for insert in inserts_by_table[applied_join["table_name"]]:
        key_idx = insert["columns"].index(applied_join["column_names"][0])
        key = insert["values"][0][key_idx]

        if key not in hashed_reference_table:
            continue

        joined_insert = copy.deepcopy(hashed_reference_table[key])
        table_names = [joined_insert["table"], insert["table"]]

        reference_key_idx = joined_insert["columns"].index(
            applied_join["reference_column_names"][0]
        )
        for i, c in enumerate(joined_insert["columns"]):
            if i != reference_key_idx and c in insert["columns"]:
                joined_insert["columns"][i] = f"{joined_insert["table"]}_{c}"
        joined_insert["table"] = insert["table"]
        joined_insert["columns"].extend(insert["columns"][:key_idx])
        joined_insert["columns"].extend(insert["columns"][key_idx + 1 :])
        joined_insert["values"][0].extend(insert["values"][0][:key_idx])
        joined_insert["values"][0].extend(insert["values"][0][key_idx + 1 :])
        joined_inserts.append(joined_insert)

    inserts = random.sample(joined_inserts, min(BATCH_SIZE, len(joined_inserts)))
    return table_names, inserts, applied_join["reference_column_names"][0]


def get_data_for_one_database(
    database_file_path: str, experiment_input_file: str, foreign_key_data: list[dict]
) -> list[dict[str, str]]:
    data = []

    try:
        unparsed_inserts, database_state = read_all_inserts(database_file_path)

        inserts = []
        for insert in unparsed_inserts:
            parsed_insert = parse_insert(insert[0])
            parsed_insert["table"] = insert[1]
            parsed_insert["columns"] = insert[2]
            inserts.append(parsed_insert)

        # Group inserts by table name for batches
        inserts_by_table = defaultdict(list)
        for insert in inserts:
            inserts_by_table[insert["table"]].append(insert)

        for _ in range(NUM_DATA_POINTS_PER_DB):
            if JOIN_COUNT == 0:
                table_names, inserts_to_combine = get_inserts_for_random_table(
                    inserts_by_table
                )
            else:
                table_names, inserts_to_combine, join_column = (
                    get_inserts_for_random_join(inserts_by_table, foreign_key_data)
                )

            if len(inserts_to_combine) == 0:
                # print("Could not create any inserts for database", database_file_path)
                continue

            universal_columns = []
            seen_columns = set()

            for insert in inserts_to_combine:
                for col in insert["columns"]:
                    if col not in seen_columns:
                        universal_columns.append(col)
                        seen_columns.add(col)

            combined_values = []

            for insert in inserts_to_combine:
                col_index_map = {col: i for i, col in enumerate(insert["columns"])}

                aligned_row = []
                for col in universal_columns:
                    if col in col_index_map:
                        aligned_row.append(insert["values"][0][col_index_map[col]])
                    else:
                        aligned_row.append(None)

                combined_values.append(tuple(aligned_row))

            combined_insert = {
                "table": table_names[-1],
                "columns": universal_columns,
                "values": combined_values,
            }
            join_column_index = universal_columns.index(join_column)
            apply_alterations_to_insert(combined_insert, INSERT_ALTERATIONS)
            insert_str = insert_to_string(combined_insert)

            database_folder = os.path.normpath(database_file_path).split(os.path.sep)[
                -2
            ]
            database_name = "_".join(database_folder.split("_")[1:])

            # TODO: Use modified columns in database state synonyms ({table_name}_{column_name})
            database_state_for_insert, expected_table_names, expected_column_names = (
                apply_alterations_to_state_table_prediction(
                    table_names,
                    database_state,
                    (
                        0
                        if experiment_input_file == "table_not_in_database"
                        else (1 if experiment_input_file == "table_in_database" else 2)
                    ),
                    table_synonyms[database_name],
                    column_synonyms[database_name],
                )
            )

            if JOIN_COUNT == 0:
                data.append(
                    {
                        "query": insert_str,
                        "database_state": database_state_for_insert,
                        "expected_table_name": expected_table_names[0],
                        "expected_column_names": expected_column_names,
                        "database_file_path": database_file_path,
                    }
                )
            else:
                data.append(
                    {
                        "query": insert_str,
                        "database_state": database_state_for_insert,
                        "expected_table_names": expected_table_names,
                        "expected_join_column_index": join_column_index,
                        "database_file_path": database_file_path,
                    }
                )
    except Exception:
        print(traceback.format_exc())
        print(f"\033[91mERROR in database {database_file_path}\033[0m")

    return random.sample(data, min(NUM_DATA_POINTS_PER_DB, len(data)))


def generate_data_for_input_file(experiment_input_file: str):
    data = []
    for path in os.listdir(DB_FOLDER):
        subfolder = os.path.join(DB_FOLDER, path)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(subfolder, "foreign_keys.json"), encoding="utf-8"
        ) as foreign_key_file:
            foreign_key_data = json.load(foreign_key_file)

        data.extend(
            get_data_for_one_database(
                os.path.join(subfolder, "gold_standard_input.sql"),
                experiment_input_file,
                foreign_key_data,
            )
        )

    random.shuffle(data)

    os.makedirs(EVALUATION_FOLDER, exist_ok=True)

    print(f"Number of data points created for {experiment_input_file}: {len(data)}")

    with open(
        os.path.join(
            EVALUATION_FOLDER,
            experiment_input_file + "_batch_" + str(BATCH_SIZE) + ".json",
        ),
        mode="w",
        encoding="utf-8",
    ) as evaluation_data_file:
        json.dump(data, evaluation_data_file, indent=4)


if __name__ == "__main__":
    for experiment_input_file in experiment_input_files:
        generate_data_for_input_file(experiment_input_file)
