from typing import Any
from util.adjustments import Adjustments
import copy
from random import Random

random = Random(3434)


def make_adjustment(
    adjustment: tuple[Any], combinations: dict[str, list[dict[str, Any]]]
) -> dict[str, list[dict[str, Any]]]:
    match adjustment[0]:
        case Adjustments.DELETE_TABLE:
            return delete_attribute(adjustment[1:], combinations, "table")
        case Adjustments.DELETE_COLUMN:
            return delete_attribute(adjustment[1:], combinations, "columns")
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
