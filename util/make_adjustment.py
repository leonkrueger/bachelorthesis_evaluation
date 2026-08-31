import copy
import os
from random import Random
from typing import Any
from collections import defaultdict

from util.adjustments import Adjustments

random = Random()


def make_adjustment(
    adjustment: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
    table_synonyms: dict[str, list[str]],
    column_synonyms: dict[str, dict[str, list[str]]],
) -> dict[str, list[dict[str, Any]]]:
    match adjustment[0]:
        case Adjustments.DELETE_TABLE:
            return delete_attribute(adjustment[1:], combinations, "table")
        case Adjustments.DELETE_COLUMN:
            return delete_attribute(adjustment[1:], combinations, "columns")
        case Adjustments.USE_SYNONYMS:
            return use_synonyms(
                adjustment[1:], combinations, table_synonyms, column_synonyms
            )
        case Adjustments.USE_TABLE_SYNONYMS:
            return use_table_synonyms(adjustment[1:], combinations, table_synonyms)
        case Adjustments.USE_COLUMN_SYNONYMS:
            return use_column_synonyms(adjustment[1:], combinations, column_synonyms)
        case Adjustments.COMBINE_INSERTS:
            return combine_inserts(adjustment[1:], combinations)
        case Adjustments.SHUFFLE_COLUMNS:
            return shuffle_columns(combinations)
        case _:
            return combinations


def delete_attribute(
    params: tuple[Any], combinations: dict[str, list[dict[str, Any]]], attribute: str
) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for delete_ratio in params[0]:
        for name, inserts in combinations.items():
            modified_inserts = []
            for insert in inserts:
                modified_insert = copy.deepcopy(insert)
                if random.random() < delete_ratio:
                    del modified_insert[attribute]
                modified_inserts.append(modified_insert)
            new_combinations[name + "_" + str(delete_ratio)] = modified_inserts
    return new_combinations


def use_synonyms(
    params: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
    table_synonyms: dict[str, list[str]],
    column_synonyms: dict[str, dict[str, list[str]]],
) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for synonym_ratio in params[0]:
        for name, inserts in combinations.items():
            modified_inserts = []
            for insert in inserts:
                modified_insert = copy.deepcopy(insert)

                # Use synonym for table if table was not deleted and insert is randomly selected
                if "table" in insert and random.random() < synonym_ratio:
                    modified_insert["table"] = (
                        random.choice(table_synonyms[insert["table"]])
                        if insert["table"] in table_synonyms
                        and len(table_synonyms[insert["table"]]) > 0
                        else insert["table"]
                    )

                # Use synonyms for columns if columns were not deleted and column is randomly selected
                if "columns" in insert:
                    for column_index in range(len(insert["columns"])):
                        if random.random() < synonym_ratio:
                            possible_synonyms = (
                                [
                                    synonym
                                    for synonym in column_synonyms[insert["table"]][
                                        insert["columns"][column_index]
                                    ]
                                    if synonym not in modified_insert["columns"]
                                ]
                                if insert["table"] in column_synonyms
                                and insert["columns"][column_index]
                                in column_synonyms[insert["table"]]
                                else []
                            )

                            if len(possible_synonyms) == 0 and insert["columns"][
                                column_index
                            ] in [
                                column
                                for index, column in enumerate(
                                    modified_insert["columns"]
                                )
                                if index != column_index
                            ]:
                                print(
                                    f"Error when generating synonym for {insert['columns'][column_index]}"
                                )

                            modified_insert["columns"][column_index] = (
                                random.choice(possible_synonyms)
                                if len(possible_synonyms) > 0
                                else insert["columns"][column_index]
                            )

                modified_inserts.append(modified_insert)
            new_combinations[name + "_" + str(synonym_ratio)] = modified_inserts
    return new_combinations


def use_table_synonyms(
    params: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
    table_synonyms: dict[str, list[str]],
) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for synonym_ratio in params[0]:
        for name, inserts in combinations.items():
            modified_inserts = []
            for insert in inserts:
                modified_insert = copy.deepcopy(insert)

                # Use synonym for table if table was not deleted and insert is randomly selected
                if "table" in insert and random.random() < synonym_ratio:
                    modified_insert["table"] = (
                        random.choice(table_synonyms[insert["table"]])
                        if insert["table"] in table_synonyms
                        and len(table_synonyms[insert["table"]]) > 0
                        else insert["table"]
                    )
                modified_inserts.append(modified_insert)
            new_combinations[name + "_" + str(synonym_ratio)] = modified_inserts
    return new_combinations


def use_column_synonyms(
    params: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
    column_synonyms: dict[str, dict[str, list[str]]],
) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for synonym_ratio in params[0]:
        for name, inserts in combinations.items():
            modified_inserts = []
            for insert in inserts:
                modified_insert = copy.deepcopy(insert)

                # Use synonyms for columns if columns were not deleted and column is randomly selected
                if "columns" in insert:
                    for column_index in range(len(insert["columns"])):
                        if random.random() < synonym_ratio:
                            possible_synonyms = (
                                [
                                    synonym
                                    for synonym in column_synonyms[insert["table"]][
                                        insert["columns"][column_index]
                                    ]
                                    if synonym not in modified_insert["columns"]
                                ]
                                if insert["table"] in column_synonyms
                                and insert["columns"][column_index]
                                in column_synonyms[insert["table"]]
                                else []
                            )

                            if len(possible_synonyms) == 0 and insert["columns"][
                                column_index
                            ] in [
                                column
                                for index, column in enumerate(
                                    modified_insert["columns"]
                                )
                                if index != column_index
                            ]:
                                print(
                                    f"Error when generating synonym for {insert['columns'][column_index]}"
                                )

                            modified_insert["columns"][column_index] = (
                                random.choice(possible_synonyms)
                                if len(possible_synonyms) > 0
                                else insert["columns"][column_index]
                            )

                modified_inserts.append(modified_insert)
            new_combinations[name + "_" + str(synonym_ratio)] = modified_inserts
    return new_combinations

def combine_inserts(
    params: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
) -> dict[str, list[dict[str, Any]]]:
    """
    Requires table and column names to be present!

    Parameter description:
    - 0: List of ratios of inserts to combine
    - 1: (min, max) range of number of inserts to combine in each insert
    """
    new_combinations = {}
    for combination_ratio in params[0]:
        for name, inserts in combinations.items():
            modified_inserts = []
            inserts_to_combine = defaultdict(lambda: [])

            for insert in inserts:
                modified_insert = copy.deepcopy(insert)
                modified_insert["values"] = [modified_insert["values"]]

                if random.random() < combination_ratio:
                    # Combine as insert
                    inserts_to_combine[insert["table"]].append(modified_insert)
                else:
                    # Use as single insert
                    modified_inserts.append(modified_insert)

            for table_name, table_inserts in inserts_to_combine.items():
                random.shuffle(table_inserts)

                while len(table_inserts) != 0:
                    insert_len = random.randint(params[1][0], params[1][1])
                    if insert_len > len(table_inserts):
                        insert_len = len(table_inserts)

                    combined_inserts = [table_inserts.pop() for _ in range(insert_len)]

                    universal_columns = []
                    seen_columns = set()

                    for insert in combined_inserts:
                        for col in insert["columns"]:
                            if col not in seen_columns:
                                universal_columns.append(col)
                                seen_columns.add(col)

                    combined_values = []

                    for insert in combined_inserts:
                        col_index_map = {col: i for i, col in enumerate(insert["columns"])}

                        aligned_row = []
                        for col in universal_columns:
                            if col in col_index_map:
                                aligned_row.append(insert["values"][0][col_index_map[col]])
                            else:
                                aligned_row.append(None)
                                
                        combined_values.append(tuple(aligned_row))

                    combined_insert = {
                        "table": table_name,
                        "columns": universal_columns,
                        "values": combined_values,
                    }
                    modified_inserts.append(combined_insert)

        random.shuffle(modified_inserts)
        new_combinations[name + "_" + str(combination_ratio)] = modified_inserts

    return new_combinations

def shuffle_columns(combinations: dict[str, list[dict[str, Any]]]) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for name, inserts in combinations.items():
        modified_inserts = []
        for insert in inserts:
            modified_insert = copy.deepcopy(insert)

            is_multirow_insert = isinstance(modified_insert["values"][0], (list, tuple))
            indices = list(range(len(modified_insert["values"][0]) if is_multirow_insert else len(modified_insert["values"])))
            random.shuffle(indices)

            shuffled_values = [[] for _ in range(len(modified_inserts["values"]))] if is_multirow_insert else []
            shuffled_columns = []
            for i in indices:
                if is_multirow_insert:
                    for j in range(len(modified_insert["values"])):
                        shuffled_values[j].append(modified_insert["values"][j][i])
                else:
                    shuffled_values.append(modified_insert["values"][i])

                if "columns" in modified_insert:
                    shuffled_columns.append(modified_insert["columns"][i])

            modified_insert["values"] = shuffled_values
            if "columns" in modified_insert:
                modified_insert["columns"] = shuffled_columns

            modified_inserts.append(modified_insert)
        new_combinations[name] = modified_inserts
    return new_combinations