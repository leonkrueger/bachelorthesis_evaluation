import json
import os
from typing import Any

import matplotlib.pyplot as plt
from numpy import average

from util.adjustments import EXPERIMENTS
from util.evaluation.accuracy import AccuracyEvaluation
from util.evaluation.evaluation import Evaluation
from util.evaluation.number_of_tables import NumberOfTablesEvaluation
from util.evaluation.null_values import NullValuesEvaluation

folder = "data"

create_evaluation_plots = False
create_individual_plots = False
create_evaluation_jsons = True

evaluation = AccuracyEvaluation()


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
    evaluation: Evaluation,
    results: dict[str, dict[str, dict[str, float]]],
    folder: str,
    experiment_name: str,
    plot_information: tuple[Any],
) -> None:
    """Creates the plots for evaluating an experiment"""
    # Strategies are the same for accuracies and null values and for each database
    for strategy in list(results.values())[0].keys():
        averages = {
            parameters: average(
                [result[strategy][parameters] for result in results.values()]
            )
            for parameters in list(results.values())[0][strategy].keys()
        }

        strategy_evaluation_folder = os.path.join(folder, "evaluation", strategy)
        os.makedirs(strategy_evaluation_folder, exist_ok=True)

        if create_evaluation_plots:
            plot_results(
                os.path.join(
                    strategy_evaluation_folder,
                    f"{experiment_name}_{evaluation.get_filename()}.png",
                ),
                plot_information[0],
                evaluation.get_y_label(),
                averages,
            )

        if create_evaluation_jsons:
            with open(
                os.path.join(
                    strategy_evaluation_folder,
                    f"{experiment_name}_{evaluation.get_filename()}.json",
                ),
                "w",
                encoding="utf-8",
            ) as json_file:
                json.dump(averages, json_file)


def evaluate_experiment_on_one_database_for_one_strategy(
    evaluation: Evaluation,
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    plot_information: tuple[Any],
) -> tuple[dict[str, float], dict[str, float]]:
    """Returns two dict that map the parameters of the experiment to its accuracy and its relative null values"""
    results = {}

    for path in os.listdir(folder):
        results_file_path = os.path.join(folder, path)
        if not results_file_path.endswith(".json"):
            continue

        parameters = path[19:-5]  # Remove "evaluation_results" and ".json"

        with open(results_file_path, encoding="utf-8") as results_file:
            results_file_content = results_file.read()

        if results_file_content.strip() == "":
            continue
        else:
            experiment_results = json.loads(results_file_content)
            results[parameters] = evaluation.calculate(
                experiment_results, gold_standard
            )

    if create_individual_plots:
        plot_results(
            os.path.join(folder, evaluation.get_filename() + ".png"),
            plot_information[0],
            evaluation.get_y_label(),
            results,
        )

    return results


def evaluate_experiment_on_one_database(
    evaluation: Evaluation,
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    plot_information: tuple[Any],
) -> dict[str, dict[str, float]]:
    """Returns two dict that map the strategy and the parameters to its accuracy and its null values"""
    results = {}

    for path in os.listdir(folder):
        strategy_results_path = os.path.join(folder, path)
        if not os.path.isdir(strategy_results_path):
            continue

        results[path] = evaluate_experiment_on_one_database_for_one_strategy(
            evaluation,
            strategy_results_path,
            gold_standard,
            plot_information,
        )

    return results


def evaluate_experiment(
    evaluation: Evaluation,
    folder: str,
    experiment_name: str,
    plot_information: tuple[Any],
) -> None:
    # Lists that contain dicts that map the strategy and paramaters to its accuracy and null values
    results = {}

    for path in os.listdir(folder):
        subfolder = os.path.join(folder, path, experiment_name)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(folder, path, "gold_standard_results.json"), encoding="utf-8"
        ) as gold_standard_file:
            gold_standard = json.load(gold_standard_file)

        db_accuracies = evaluate_experiment_on_one_database(
            evaluation,
            subfolder,
            gold_standard,
            plot_information,
        )
        results[path] = db_accuracies

    create_evaluation_plots(
        evaluation, results, folder, experiment_name, plot_information
    )


for experiment_name, experiment in EXPERIMENTS.items():
    evaluate_experiment(evaluation, folder, experiment_name, experiment[1:])
