"""
Evaluates the results of the column mapping task.
Stores the results in a new file 'results.json' in the same subfolder as the resulting dictionaries.

``results_folder`` specifies the folder in which the results saved
``prediction_key`` specifies the key that holds the prediction in the resulting dictionaries
"""

import json
import os
from typing import Any, Callable

from util.insert_parser import parse_insert

results_folder = os.path.join(
    "further_evaluation",
    "error_cases_missing_columns_combined_columns",
    "missing_columns_12000_own_data_collator_predicted_removed_from_table_state",
)

prediction_key = "predicted_column_names"


scenarios = {
    "column_in_database": lambda insert_column, expected, table_state: (
        insert_column is None or insert_column == expected
    )
    and expected in table_state.split("\n")[1].split(";"),
    "column_not_in_database": lambda insert_column, expected, table_state: (
        insert_column is None or insert_column == expected
    )
    and expected not in table_state.split("\n")[1].split(";"),
    "different_name_in_database": lambda insert_column, expected, table_state: (
        insert_column is None or insert_column != expected
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
    columns_prediction_condition_requires_other_predictions: bool = False,
) -> float:
    column_predictions = 0
    correct_predictions = 0
    for result in results:
        if skip_result_condition(result, prediction_key):
            continue

        parsed_insert = parse_insert(result["query"])
        # Predicted, Expected, Column in insert (None possible)
        prediction_pairs = list(
            zip(
                result[prediction_key],
                result["expected_column_names"],
                (
                    parsed_insert["columns"]
                    if "columns" in parsed_insert.keys()
                    else [None for i in range(len(result["expected_column_names"]))]
                ),
            )
        )
        column_predictions += len(
            [
                predicted
                for predicted, expected, insert_column in prediction_pairs
                if scenario_condition(insert_column, expected, result["table_state"])
            ]
        )
        # Only if you want to count results with a different number of predictions that expected
        # if len(result["expected_column_names"]) > len(result[prediction_key]):
        #     column_predictions += len(
        #         [
        #             expected
        #             for expected, insert_column in zip(
        #                 result["expected_column_names"][len(result[prediction_key]) :],
        #                 (
        #                     parsed_insert["columns"][len(result[prediction_key]) :]
        #                     if "columns" in parsed_insert.keys()
        #                     else [
        #                         None
        #                         for i in range(
        #                             len(
        #                                 result["expected_column_names"][
        #                                     len(result[prediction_key]) :
        #                                 ]
        #                             )
        #                         )
        #                     ]
        #                 ),
        #             )
        #             if scenario_condition(insert_column, expected, result["table_state"])
        #         ]
        #     )
        correct_predictions += len(
            [
                predicted
                for predicted, expected, insert_column in prediction_pairs
                if scenario_condition(insert_column, expected, result["table_state"])
                and (
                    columns_prediction_condition_requires_other_predictions
                    and column_prediction_condition(
                        predicted, expected, result["table_state"], prediction_pairs
                    )
                    or not columns_prediction_condition_requires_other_predictions
                    and column_prediction_condition(
                        predicted, expected, result["table_state"]
                    )
                )
            ]
        )

    return correct_predictions / column_predictions


def get_predictions(predicted_column_names, insert_data):
    return (
        predicted_column_names.split("\n")[0].split(
            ";"
        )  # Only used to support first experiments
        if isinstance(predicted_column_names, str)
        else predicted_column_names
    )


if __name__ == "__main__":
    results = {}

    for path in os.listdir(results_folder):
        results_file_path = os.path.join(results_folder, path)
        if not os.path.isfile(results_file_path) or not results_file_path.endswith(
            ".json"
        ):
            continue

        with open(results_file_path) as results_file:
            experiment_results = json.load(results_file)

        # No file with prompt results but analysis
        if not isinstance(experiment_results, list):
            continue

        for result in experiment_results:
            result[prediction_key] = get_predictions(
                result[prediction_key],
                parse_insert(result["query"]),
            )

        wrong_number_of_columns_condition = lambda result, prediction_key: len(
            result[prediction_key]
        ) != len(result["expected_column_names"])

        aggregated_results = {}
        aggregated_results["wrong_number_of_columns"] = evaluate_column_prediction(
            experiment_results,
            wrong_number_of_columns_condition,
            prediction_key,
        )

        same_prediction_for_multiple_columns_condition = (
            lambda result, prediction_key: any(
                [
                    any(
                        [
                            i != j
                            and result[prediction_key][i] == result[prediction_key][j]
                            for j in range(len(result[prediction_key]))
                        ]
                    )
                    for i in range(len(result[prediction_key]))
                ]
            )
        )

        aggregated_results["query_with_any_duplicate_prediction"] = (
            evaluate_column_prediction(
                experiment_results,
                same_prediction_for_multiple_columns_condition,
                prediction_key,
            )
        )

        aggregated_results["duplicate_predictions"] = (
            evaluate_column_prediction_single_column(
                experiment_results,
                lambda insert_column, expected, table_state: True,
                lambda predicted, expected, table_state, prediction_pairs: any(
                    [
                        pair[1] != expected and pair[0] == predicted
                        for pair in prediction_pairs
                    ]
                ),
                prediction_key,
                wrong_number_of_columns_condition,
                True,
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

        results[path[8:-5]] = aggregated_results

    with open(
        os.path.join(results_folder, "results.json"),
        mode="w",
        encoding="utf-8",
    ) as results_file:
        json.dump(results, results_file, indent=4)
