import json
import os
from typing import Any

import matplotlib.pyplot as plt
from numpy import average

from util.adjustments import EXPERIMENTS

folder = "bird"


def calculate_accuracy(
    results: dict[str, list[list[str]]],
    gold_standard: dict[str, list[list[str]]],
    primary_keys: dict[str, list[str]],
) -> float:
    correct_inserts = 0
    total_inserts = 0
    for query, gold_standard_table in gold_standard.items():
        # If the table does not exist in the result, continue with the next.
        if not query in results.keys():
            total_inserts += len(gold_standard_table)
            continue

        for gold_standard_row in gold_standard_table:
            if any(
                [
                    all([value in result_row for value in gold_standard_row])
                    for result_row in results[query]
                ]
            ):
                correct_inserts += 1
            total_inserts += 1

    return correct_inserts / float(total_inserts)


def calculate_number_of_null_values(results: dict[str, list[list[str]]]) -> int:
    return len(
        [
            value
            for query, table in results.items()
            for row in table
            for value in row
            if value is None
        ]
    )


def plot_results(
    path: str, x_label: str, y_label: str, results: dict[str, Any]
) -> None:
    results = dict(sorted(results.items(), key=lambda result: result[0]))
    plt.bar(results.keys(), results.values())
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.savefig(path)
    plt.close()


def create_evaluation_plots(
    accuracies: list[dict[str, dict[str, float]]],
    null_values: list[dict[str, dict[str, float]]],
    folder: str,
    experiment_name: str,
    plot_information: tuple[Any],
) -> None:
    """Creates the plots for evaluating an experiment"""
    # Strategies are the same for accuracies and null values and for each database
    for strategy in accuracies[0].keys():
        average_accuracies = {
            parameters: average(
                [db_accuracies[strategy][parameters] for db_accuracies in accuracies]
            )
            for parameters in accuracies[0][strategy].keys()
        }
        average_null_values = {
            parameters: average(
                [db_null_values[strategy][parameters] for db_null_values in null_values]
            )
            for parameters in null_values[0][strategy].keys()
        }

        strategy_evaluation_folder = os.path.join(folder, strategy)
        os.makedirs(strategy_evaluation_folder, exist_ok=True)

        plot_results(
            os.path.join(strategy_evaluation_folder, f"{experiment_name}_accuracy.png"),
            plot_information[0],
            "Accuracy",
            average_accuracies,
        )
        plot_results(
            os.path.join(
                strategy_evaluation_folder, f"{experiment_name}_null_values.png"
            ),
            plot_information[0],
            "Number of NULL-values relative to Gold Standard",
            average_null_values,
        )


def evaluate_experiment_on_one_database_for_one_strategy(
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    primary_keys: dict[str, list[str]],
    plot_information: tuple[Any],
    null_values_gold_standard: int,
) -> tuple[dict[str, float], dict[str, float]]:
    """Returns two dict that map the parameters of the experiment to its accuracy and its relative null values"""
    accuracies = {}
    null_values_absolute = {}
    null_values_relative = {}

    for path in os.listdir(folder):
        results_file_path = os.path.join(folder, path)
        if not results_file_path.endswith(".json"):
            continue

        parameters = path[19:-5]  # Remove "evaluation_results" and ".json"

        with open(results_file_path, encoding="utf-8") as results_file:
            results = json.load(results_file)
            accuracies[parameters] = calculate_accuracy(
                results, gold_standard, primary_keys
            )
            null_values_absolute[parameters] = calculate_number_of_null_values(results)
            null_values_relative[parameters] = (
                null_values_absolute[parameters] / null_values_gold_standard
            )

    plot_results(
        os.path.join(folder, "accuracy.png"),
        plot_information[0],
        "Accuracy",
        accuracies,
    )
    plot_results(
        os.path.join(folder, "null_values_absolute.png"),
        plot_information[0],
        "Number of NULL-values",
        null_values_absolute,
    )
    plot_results(
        os.path.join(folder, "null_values_relative.png"),
        plot_information[0],
        "Number of NULL-values relative to Gold Standard",
        null_values_relative,
    )

    return accuracies, null_values_relative


def evaluate_experiment_on_one_database(
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    primary_keys: dict[str, list[str]],
    plot_information: tuple[Any],
    null_values_gold_standard: int,
) -> tuple[dict[str, dict[str, float]], dict[str, dict[str, float]]]:
    """Returns two dict that map the strategy and the parameters to its accuracy and its null values"""
    accuracies = {}
    null_values = {}

    for path in os.listdir(folder):
        strategy_results_path = os.path.join(folder, path)
        if not os.path.isdir(strategy_results_path):
            continue

        accuracies[path], null_values[path] = (
            evaluate_experiment_on_one_database_for_one_strategy(
                strategy_results_path,
                gold_standard,
                primary_keys,
                plot_information,
                null_values_gold_standard,
            )
        )

    return accuracies, null_values


def evaluate_experiment(
    folder: str, experiment_name: str, plot_information: tuple[Any]
) -> None:
    # Lists that contain dicts that map the strategy and paramaters to its accuracy and null values
    accuracies = []
    null_values = []

    for path in os.listdir(folder):
        subfolder = os.path.join(folder, path, experiment_name)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(folder, path, "gold_standard_results.json"), encoding="utf-8"
        ) as gold_standard_file:
            gold_standard = json.load(gold_standard_file)
        with open(
            os.path.join(folder, path, "primary_keys.json"), encoding="utf-8"
        ) as primary_keys_file:
            primary_keys = json.load(primary_keys_file)

        db_accuracies, db_null_values = evaluate_experiment_on_one_database(
            subfolder,
            gold_standard,
            primary_keys,
            plot_information,
            calculate_number_of_null_values(gold_standard),
        )
        accuracies.append(db_accuracies)
        null_values.append(db_null_values)

    create_evaluation_plots(
        accuracies, null_values, folder, experiment_name, plot_information
    )


for experiment_name, experiment in EXPERIMENTS.items():
    evaluate_experiment(folder, experiment_name, experiment[1:])
