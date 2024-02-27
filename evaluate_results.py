import json
import os
from typing import Any
import matplotlib.pyplot as plt
from numpy import average
from util.adjustments import EXPERIMENTS

folder = "bird"


def calculate_accuracy(
    results: dict[str, list[list[str]]], gold_standard: dict[str, list[list[str]]]
) -> float:
    correct_inserts = 0
    total_inserts = 0
    for query in gold_standard.keys():
        if (
            "area_code" in query
            or "avoid" in query
            or "country" in query
            or "zip_congress" in query
        ):
            gold_standard_keys = [(row[0], row[1]) for row in gold_standard[query]]
            result_keys = (
                [(row[0], row[1]) for row in results[query]]
                if query in results.keys()
                else []
            )
        else:
            gold_standard_keys = [row[0] for row in gold_standard[query]]
            result_keys = (
                [row[0] for row in results[query]] if query in results.keys() else []
            )

        for inserted_value in gold_standard_keys:
            if inserted_value in result_keys:
                correct_inserts += 1
            total_inserts += 1

    return correct_inserts / float(total_inserts)


def calculate_number_of_null_values(results: dict[str, list[list[str]]]) -> int:
    return sum(
        [
            1 if value is None else 0
            for query, table in results.items()
            for row in table
            for value in row
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


def evaluate_experiment_on_one_database(
    folder: str, gold_standard: dict[str, list[list[str]]], plot_information: tuple[Any]
) -> tuple[dict[str, Any]]:
    accuracies = {}
    null_values = {}

    for path in os.listdir(folder):
        results_file_path = os.path.join(folder, path)
        if not results_file_path.endswith(".json"):
            continue

        parameters = path[19:-5]  # Remove "evaluation_results" and ".json"

        with open(results_file_path) as results_file:
            results = json.load(results_file)
            accuracies[parameters] = calculate_accuracy(results, gold_standard)
            null_values[parameters] = calculate_number_of_null_values(results)

    plot_results(
        os.path.join(folder, "accuracy.png"),
        plot_information[0],
        "Accuracy",
        accuracies,
    )
    plot_results(
        os.path.join(folder, "null_values.png"),
        plot_information[0],
        "Number of NULL-values",
        null_values,
    )

    return accuracies, null_values


def evaluate_experiment(experiment_name: str, plot_information: tuple[Any]) -> None:
    accuracies = []
    null_values = []
    for path in os.listdir(folder):
        subfolder = os.path.join(folder, path, experiment_name)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(folder, path, "gold_standard_results.json")
        ) as gold_standard_file:
            gold_standard = json.load(gold_standard_file)

        db_accuracies, db_null_values = evaluate_experiment_on_one_database(
            subfolder, gold_standard, plot_information
        )
        db_null_values["Gold standard"] = calculate_number_of_null_values(gold_standard)
        accuracies.append(db_accuracies)
        null_values.append(db_null_values)

    average_accuracies = {
        parameters: average([accuracy[parameters] for accuracy in accuracies])
        for parameters in accuracies[0].keys()
    }
    average_null_values = {
        parameters: average([null_value[parameters] for null_value in null_values])
        for parameters in null_values[0].keys()
    }

    plot_results(
        os.path.join(folder, f"{experiment_name}_accuracy.png"),
        plot_information[0],
        "Accuracy",
        average_accuracies,
    )
    plot_results(
        os.path.join(folder, f"{experiment_name}_null_values.png"),
        plot_information[0],
        "Number of NULL-values",
        average_null_values,
    )


for experiment_name, experiment in EXPERIMENTS.items():
    evaluate_experiment(experiment_name, experiment[1:])
