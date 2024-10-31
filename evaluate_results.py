"""
Evaluates the resulting evaluation databases in comparison to the gold standard. The results can be found in {folder}/evaluation.

``folder`` should contain the subfolders that were created by the scripts prepare_inserts.py and create_evaluation_inserts.py!
``write_averages_per_strategy`` specifies if the averages per strategy should be written
``write_all_results`` specifies if the entire results should be written
``split_by_datatype`` specifies the datatype by which the results should be split (only works for F1Score). If the results should not be split set it to None.
``evaluation`` should contain an instance of the evaluation class that should be used
"""

import json
import os
from math import isnan

from numpy import average
from tqdm import tqdm

from util.adjustments import EXPERIMENTS
from util.evaluation.accuracy import AccuracyEvaluation
from util.evaluation.evaluation import Evaluation
from util.evaluation.f1_score import F1Score
from util.evaluation.number_of_tables import NumberOfTablesEvaluation
from util.evaluation.sparsity import SparsityEvaluation

folder = "data"

write_averages_per_strategy = True
write_all_results = True

split_by_datatype = "string"  # "number"
evaluation = F1Score(split_by_datatype=split_by_datatype)
# evaluation = SparsityEvaluation()
# evaluation = NumberOfTablesEvaluation()


def write_averages(
    evaluation: Evaluation,
    results: dict[str, dict[str, dict[str, float]]],
    folder: str,
    experiment_name: str,
) -> None:
    """Creates the plots for evaluating an experiment"""
    for strategy in list(results.values())[0].keys():
        if strategy == "gold_standard":
            continue

        if not isinstance(evaluation, F1Score) or not split_by_datatype:
            averages = {
                parameters: average(
                    [
                        result[strategy][parameters]
                        for result in results.values()
                        if parameters in result[strategy]
                    ]
                )
                for parameters in list(
                    sorted(results.values(), key=lambda x: len(x[strategy]))
                )[-1][strategy].keys()
            }
        else:
            averages = {
                parameters: {
                    ratio: average(
                        [
                            db_result[strategy][parameters][ratio]
                            for db_result in results.values()
                            if parameters in db_result[strategy]
                            and not isnan(db_result[strategy][parameters][ratio])
                        ]
                    )
                    for ratio in list(results.values())[0][strategy][parameters].keys()
                }
                for parameters in list(
                    sorted(results.values(), key=lambda x: len(x[strategy]))
                )[-1][strategy].keys()
            }

        strategy_evaluation_folder = os.path.join(folder, "evaluation", strategy)
        os.makedirs(strategy_evaluation_folder, exist_ok=True)

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
    experiment_name: str,
) -> dict[str, float]:
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

    return results


def evaluate_experiment_on_one_database(
    evaluation: Evaluation,
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    experiment_name: str,
) -> dict[str, dict[str, float]]:
    """Returns two dict that map the strategy and the parameters to its accuracy and its null values"""
    results = {}

    for path in tqdm(os.listdir(folder)):
        strategy_results_path = os.path.join(folder, path)
        if not os.path.isdir(strategy_results_path):
            continue

        results[path] = evaluate_experiment_on_one_database_for_one_strategy(
            strategy_results_path,
            evaluation,
            gold_standard,
            experiment_name,
        )
    results["gold_standard"] = evaluation.calculate(gold_standard, gold_standard)
    return results


def evaluate_experiment(
    evaluation: Evaluation,
    folder: str,
    experiment_name: str,
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
            evaluation, subfolder, gold_standard, experiment_name
        )
        results[path] = db_accuracies

    if write_all_results:
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

    if write_averages_per_strategy:
        write_averages(evaluation, results, folder, experiment_name)


if __name__ == "__main__":
    for experiment_name in EXPERIMENTS.keys():
        evaluate_experiment(evaluation, folder, experiment_name)
