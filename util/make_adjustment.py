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
        for name, queries in combinations.items():
            modified_queries = []
            for query in queries:
                modified_query = copy.deepcopy(query)
                if random.random() < delete_ratio:
                    del modified_query[attribute]
                modified_queries.append(modified_query)
            new_combinations[name + "_" + str(delete_ratio)] = modified_queries
    return new_combinations


def use_synonyms(
    params: tuple[Any],
    combinations: dict[str, list[dict[str, Any]]],
    table_synonyms: dict[str, list[str]],
    column_synonyms: dict[str, dict[str, list[str]]],
) -> dict[str, list[dict[str, Any]]]:
    new_combinations = {}
    for synonym_ratio in params[0]:
        for name, queries in combinations.items():
            modified_queries = []
            for query in queries:
                modified_query = copy.deepcopy(query)

                # Use synonym for table if table was not deleted and query is randomly selected
                if "table" in query and random.random() < synonym_ratio:
                    modified_query["table"] = (
                        random.choice(table_synonyms[query["table"]])
                        if query["table"] in table_synonyms
                        and len(table_synonyms[query["table"]]) > 0
                        else query["table"]
                    )

                # Use synonyms for columns if columns were not deleted and column is randomly selected
                if "columns" in query:
                    for column_index in range(len(query["columns"])):
                        if random.random() < synonym_ratio:
                            possible_synonyms = (
                                [
                                    synonym
                                    for synonym in column_synonyms[query["table"]][
                                        query["columns"][column_index]
                                    ]
                                    if synonym not in modified_query["columns"]
                                ]
                                if query["table"] in column_synonyms
                                and query["columns"][column_index]
                                in column_synonyms[query["table"]]
                                else []
                            )

                            if len(possible_synonyms) == 0 and query["columns"][
                                column_index
                            ] in [
                                column
                                for index, column in enumerate(
                                    modified_query["columns"]
                                )
                                if index != column_index
                            ]:
                                print(
                                    f"Error when generating synonym for {query['columns'][column_index]}"
                                )

                            modified_query["columns"][column_index] = (
                                random.choice(possible_synonyms)
                                if len(possible_synonyms) > 0
                                else query["columns"][column_index]
                            )

                modified_queries.append(modified_query)
            new_combinations[name + "_" + str(synonym_ratio)] = modified_queries
    return new_combinations
