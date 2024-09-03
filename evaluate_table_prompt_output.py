import json
import os
import re
from typing import Any, Callable

from tabulate import tabulate

results_folder = os.path.join(
    "further_evaluation",
    "error_cases_missing_tables_csv_tables_deleted",
    "missing_tables_12000_csv_data_collator",
)

prediction_key = "predicted_table_name"


def evaluate_table_prediction(
    results: list[dict[str, Any]],
    condition: Callable[[dict[str, Any], str], bool],
    prediction_key: str,
) -> float:
    correct_predictions = len(
        [result for result in results if condition(result, prediction_key)]
    )
    return correct_predictions / len(results)


results = {}

for path in os.listdir(results_folder):
    results_file_path = os.path.join(results_folder, path)
    if (
        not os.path.isfile(results_file_path)
        or not results_file_path.endswith(".json")
        or path == "results.json"
    ):
        continue

    with open(results_file_path) as results_file:
        experiment_results = json.load(results_file)

    experiment_name = path[8:-5]

    aggregated_results = {}
    aggregated_results["existing_table_with_correct_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result, prediction_key: result[prediction_key]
        == result["expected_table_name"]
        and result[prediction_key]
        in (
            [
                match[6:-1]
                for match in re.findall(r"Table \S+", result["database_state"])
            ]
            if isinstance(result["database_state"], str)
            else result["database_state"].keys()
        ),
        prediction_key,
    )
    aggregated_results["existing_table_with_wrong_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result, prediction_key: result[prediction_key]
        != result["expected_table_name"]
        and result[prediction_key]
        in (
            [
                match[6:-1]
                for match in re.findall(r"Table \S+", result["database_state"])
            ]
            if isinstance(result["database_state"], str)
            else result["database_state"].keys()
        ),
        prediction_key,
    )
    aggregated_results["new_table_with_correct_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result, prediction_key: result[prediction_key]
        == result["expected_table_name"]
        and result[prediction_key]
        not in (
            [
                match[6:-1]
                for match in re.findall(r"Table \S+", result["database_state"])
            ]
            if isinstance(result["database_state"], str)
            else result["database_state"].keys()
        ),
        prediction_key,
    )
    aggregated_results["new_table_with_wrong_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result, prediction_key: result[prediction_key]
        != result["expected_table_name"]
        # and result[prediction_key] != "new_table"
        and result[prediction_key]
        not in (
            [
                match[6:-1]
                for match in re.findall(r"Table \S+", result["database_state"])
            ]
            if isinstance(result["database_state"], str)
            else result["database_state"].keys()
        ),
        prediction_key,
    )
    # aggregated_results["new_table_with_no_name"] = evaluate_table_prediction(
    #     experiment_results,
    #     lambda result, prediction_key: result[prediction_key] == "new_table"
    #     and result[prediction_key]
    #     not in (
    #         [
    #             match[6:-1]
    #             for match in re.findall(r"Table \S+", result["database_state"])
    #         ]
    #         if isinstance(result["database_state"], str)
    #         else result["database_state"].keys()
    #     ),
    #     prediction_key,
    # )

    results[experiment_name] = aggregated_results

with open(
    os.path.join(results_folder, "results.json"), mode="w", encoding="utf-8"
) as results_file:
    json.dump(results, results_file)

# print(
#     tabulate(
#         [zip(result.keys(), result.values()) for result in results.values()],
#         headers=results.keys(),
#         tablefmt="latex",
#     )
# )
