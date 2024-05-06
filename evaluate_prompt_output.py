import json
import os
from typing import Any, Callable

results_folder = os.path.join(
    "further_evaluation", "error_cases_missing_tables", "missing_tables_1500"
)


def evaluate_table_prediction(
    results: list[dict[str, Any]], condition: Callable[[dict[str, Any]], bool]
) -> float:
    correct_predictions = len([result for result in results if condition(result)])
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
        lambda result: result["predicted_table_name"] == result["expected_table_name"]
        and result["predicted_table_name"] in result["database_state"].keys(),
    )
    aggregated_results["existing_table_with_wrong_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result: result["predicted_table_name"] != result["expected_table_name"]
        and result["predicted_table_name"] in result["database_state"].keys(),
    )
    aggregated_results["new_table_with_correct_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result: result["predicted_table_name"] == result["expected_table_name"]
        and result["predicted_table_name"] not in result["database_state"].keys(),
    )
    aggregated_results["new_table_with_wrong_name"] = evaluate_table_prediction(
        experiment_results,
        lambda result: result["predicted_table_name"] != result["expected_table_name"]
        and result["predicted_table_name"] not in result["database_state"].keys(),
    )

    results[experiment_name] = aggregated_results

with open(
    os.path.join(results_folder, "results.json"), mode="w", encoding="utf-8"
) as results_file:
    json.dump(results, results_file)
