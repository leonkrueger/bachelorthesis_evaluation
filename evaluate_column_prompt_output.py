import json
import os
import re
from typing import Any, Callable

from tabulate import tabulate

from util.insert_query_parser import parse_insert_query

results_folder = os.path.join(
    "further_evaluation",
    "error_cases_missing_columns_combined_columns",
    "missing_columns_12000_csv_predicted_removed_from_table_state",
)

prediction_key = "predicted_column_names"


scenarios = {
    "column_in_database": lambda query_column, expected, table_state: (
        query_column is None or query_column == expected
    )
    and expected in table_state.split("\n")[1].split(";"),
    "column_not_in_database": lambda query_column, expected, table_state: (
        query_column is None or query_column == expected
    )
    and expected not in table_state.split("\n")[1].split(";"),
    "different_name_in_database": lambda query_column, expected, table_state: (
        query_column is None or query_column != expected
    )
    and expected in table_state.split("\n")[1].split(";"),
}


def evaluate_column_prediction(
    results: list[dict[str, Any]],
    condition: Callable[[dict[str, Any], str], bool],
    prediction_key: str,
) -> float:
    correct_predictions = len(
        [result for result in results if condition(result, prediction_key)]
    )
    return correct_predictions / len(results)


def evaluate_column_prediction_single_column(
    results: list[dict[str, Any]],
    scenario_condition: Callable[[str, str, str], bool],
    column_prediction_condition: Callable[[str, str, str], bool],
    prediction_key: str,
    skip_result_condition: Callable[[dict[str], str], bool],
) -> float:
    column_predictions = 0
    correct_predictions = 0
    for result in results:
        if skip_result_condition(result, prediction_key):
            continue

        parsed_query = parse_insert_query(result["query"])
        prediction_pairs = list(
            zip(
                result[prediction_key],
                result["expected_column_names"],
                (
                    parsed_query["columns"]
                    if "columns" in parsed_query.keys()
                    else [None for i in range(len(result["expected_column_names"]))]
                ),
            )
        )
        column_predictions += len(
            [
                predicted
                for predicted, expected, query_column in prediction_pairs
                if scenario_condition(query_column, expected, result["table_state"])
            ]
        )
        correct_predictions += len(
            [
                predicted
                for predicted, expected, query_column in prediction_pairs
                if scenario_condition(query_column, expected, result["table_state"])
                and column_prediction_condition(
                    predicted, expected, result["table_state"]
                )
            ]
        )

    return correct_predictions / column_predictions


def get_predictions(predicted_column_names, query_data):
    # value_column_pairs = [
    #     (prediction.split("->")[0].strip(), prediction.split("->")[1].strip())
    #     for prediction in predicted_column_names.split("\n")
    # ]

    # predictions = []
    # for value in query_data["values"][0]:
    #     index, predicted = [
    #         (i, pair[1])
    #         for i, pair in enumerate(value_column_pairs)
    #         if pair[0] == value
    #     ][0]
    #     value_column_pairs.pop(index)
    #     predictions.append(predicted)
    return (
        predicted_column_names.split("\n")[0].split(";")
        if isinstance(predicted_column_names, str)
        else predicted_column_names
    )


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

    for result in experiment_results:
        result[prediction_key] = get_predictions(
            result[prediction_key],
            parse_insert_query(result["query"]),
        )

    experiment_name = path[8:-5]

    wrong_number_of_columns_condition = lambda result, prediction_key: len(
        result[prediction_key]
    ) != len(result["expected_column_names"])

    aggregated_results = {}
    aggregated_results["wrong_number_of_columns"] = evaluate_column_prediction(
        experiment_results,
        wrong_number_of_columns_condition,
        prediction_key,
    )

    same_prediction_for_multiple_columns_condition = lambda result, prediction_key: any(
        [
            any(
                [
                    i != j and result[prediction_key][i] == result[prediction_key][j]
                    for j in range(len(result[prediction_key]))
                ]
            )
            for i in range(len(result[prediction_key]))
        ]
    )

    aggregated_results["same_prediction_for_multiple_columns"] = (
        evaluate_column_prediction(
            experiment_results,
            same_prediction_for_multiple_columns_condition,
            prediction_key,
        )
    )

    for scenario_name, scenario_condition in scenarios.items():
        scenario_results = {}
        scenario_results["existing_column_with_correct_name"] = (
            evaluate_column_prediction_single_column(
                experiment_results,
                scenario_condition,
                lambda predicted, expected, table_state: predicted == expected
                and predicted in table_state.split("\n")[1].split(";"),
                prediction_key,
                wrong_number_of_columns_condition,
            )
        )
        scenario_results["existing_column_with_wrong_name"] = (
            evaluate_column_prediction_single_column(
                experiment_results,
                scenario_condition,
                lambda predicted, expected, table_state: predicted != expected
                and predicted in table_state.split("\n")[1].split(";"),
                prediction_key,
                wrong_number_of_columns_condition,
            )
        )
        scenario_results["new_column_with_correct_name"] = (
            evaluate_column_prediction_single_column(
                experiment_results,
                scenario_condition,
                lambda predicted, expected, table_state: predicted == expected
                and predicted not in table_state.split("\n")[1].split(";"),
                prediction_key,
                wrong_number_of_columns_condition,
            )
        )
        scenario_results["new_column_with_wrong_name"] = (
            evaluate_column_prediction_single_column(
                experiment_results,
                scenario_condition,
                lambda predicted, expected, table_state: predicted != expected
                and predicted not in table_state.split("\n")[1].split(";"),
                prediction_key,
                wrong_number_of_columns_condition,
            )
        )
        aggregated_results[scenario_name] = scenario_results

    results[experiment_name] = aggregated_results

with open(
    os.path.join(results_folder, "results.json"), mode="w", encoding="utf-8"
) as results_file:
    json.dump(results, results_file, indent=4)

# print(
#     tabulate(
#         [zip(result.keys(), result.values()) for result in results.values()],
#         headers=results.keys(),
#         tablefmt="latex",
#     )
# )
