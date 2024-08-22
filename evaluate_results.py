import json
import os
from functools import partial
from multiprocessing import Pool
from typing import Any

import matplotlib.pyplot as plt
from numpy import average
from tqdm import tqdm

from util.adjustments import EXPERIMENTS
from util.evaluation.accuracy import AccuracyEvaluation
from util.evaluation.evaluation import Evaluation
from util.evaluation.f1_score import F1Score
from util.evaluation.number_of_tables import NumberOfTablesEvaluation
from util.evaluation.sparsity import SparsityEvaluation

folder = "data"

create_evaluation_plots = False
create_evaluation_jsons = True
print_result_dict = True
create_individual_plots = False

evaluation = F1Score(average)
# evaluation = SparsityEvaluation()


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
    y_label: str,
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
                y_label,
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
    folder: str,
    evaluation: Evaluation,
    gold_standard: dict[str, list[list[str]]],
    y_label: str,
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
            y_label,
            evaluation.get_y_label(),
            results,
        )

    return (folder, results)


def evaluate_experiment_on_one_database(
    evaluation: Evaluation,
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    y_label: str,
) -> dict[str, dict[str, float]]:
    """Returns two dict that map the strategy and the parameters to its accuracy and its null values"""
    strategy_results_paths = [os.path.join(folder, path) for path in os.listdir(folder)]
    strategy_results_paths = [
        path for path in strategy_results_paths if os.path.isdir(path)
    ]

    with Pool(4) as pool:
        results = pool.map(
            partial(
                evaluate_experiment_on_one_database_for_one_strategy,
                evaluation=evaluation,
                gold_standard=gold_standard,
                y_label=y_label,
            ),
            strategy_results_paths,
        )

    return dict(results)


def evaluate_experiment(
    evaluation: Evaluation,
    folder: str,
    experiment_name: str,
    y_label: str,
) -> None:
    # Lists that contain dicts that map the strategy and paramaters to its accuracy and null values
    results = {}

    for path in tqdm(os.listdir(folder)):
        subfolder = os.path.join(folder, path, experiment_name)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(folder, path, "gold_standard_results.json"), encoding="utf-8"
        ) as gold_standard_file:
            if (file_content := gold_standard_file.read()) == "":
                continue
            gold_standard = json.loads(file_content)

        db_accuracies = evaluate_experiment_on_one_database(
            evaluation,
            subfolder,
            gold_standard,
            y_label,
        )
        results[path] = db_accuracies

    if print_result_dict:
        with open(
            os.path.join(
                folder,
                "evaluation",
                f"{experiment_name}_{evaluation.get_filename()}.json",
            ),
            "w",
            encoding="utf-8",
        ) as json_file:
            json.dump(results, json_file)

    create_evaluation_plots(evaluation, results, folder, experiment_name, y_label)


for experiment_name, experiment in EXPERIMENTS.items():
    evaluate_experiment(evaluation, folder, experiment_name, experiment["y_label"])
