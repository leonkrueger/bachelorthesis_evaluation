import copy
import os
from random import Random
from typing import Any

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
