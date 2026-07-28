"""
Evaluates the resulting evaluation databases in comparison to the gold standard. The results can be found in {folder}/evaluation.

``folder`` should contain the subfolders that were created by the scripts prepare_inserts.py and create_evaluation_inserts.py!
``write_averages_per_strategy`` specifies if the averages per strategy should be written
``write_all_results`` specifies if the entire results should be written
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
from util.evaluation.f1_score import F1Score, EvaluationType
from util.evaluation.number_of_entities import NumberOfTablesEvaluation, NumberOfColumnsEvaluation
from util.evaluation.sparsity import SparsityEvaluation

folder = "data"

write_averages_per_strategy = True

evaluation = F1Score(strict_score=False, evaluation_type=EvaluationType.F1_SCORE)
# evaluation = SparsityEvaluation()
# evaluation = NumberOfTablesEvaluation()
# evaluation = NumberOfColumnsEvaluation()


def write_averages(
    evaluation: Evaluation,
    results: dict[str, dict[str, dict[str, float]]],
    experiment_name: str,
) -> None:
    """Creates the plots for evaluating an experiment"""
    for strategy in list(results.values())[0].keys():
        try:
            if strategy == "gold_standard":
                continue

            averages = {
                parameters: average(
                    [
                        result[strategy][parameters]
                        for result in results.values()
                        if parameters in result[strategy]
                    ]
                )
                for parameters in list(
                    sorted(results.values(), key=lambda x: len(x.get[strategy]))
                )[-1][strategy].keys()
            }

            strategy_evaluation_folder = os.path.join("results", strategy)
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
        except:
            pass


def evaluate_experiment_on_one_database(
    evaluation: Evaluation,
    folder: str,
    gold_standard: dict[str, list[list[str]]],
    existing_results: dict[str, any],
    ignore_existing_results: bool = False,
) -> dict[str, dict[str, float]]:
    """Returns two dict that map the strategy and the parameters to its accuracy and its null values"""
    results = {}

    # If results for this database already exist, use them as a basis
    db_name = os.path.basename(os.path.dirname(folder))
    if db_name in existing_results:
        results = existing_results[db_name]

    for path in tqdm(os.listdir(folder)):
        strategy_results_path = os.path.join(folder, path)
        if not os.path.isdir(strategy_results_path):
            continue

        if not path.startswith("justine_3_3"):
            continue

        ignore_existing_results = ignore_existing_results or False # path == "justine_3_3_retry_with_feedback_old_db_prompt"

        # Skip if results for this strategy already exist and are complete
        if not ignore_existing_results and path in results and results[path]:
            # A simple check if some results are there. More complex checks could be added.
            continue

        results[path] = {}
        for result_file_name in os.listdir(strategy_results_path):
            results_file_path = os.path.join(strategy_results_path, result_file_name)
            if not results_file_path.endswith(".json"):
                continue

            parameters = result_file_name[
                19:-5
            ]  # Remove "evaluation_results" and ".json"

            # Skip if this specific parameter set has been evaluated
            if parameters in results[path]:
                continue

            with open(results_file_path, encoding="utf-8") as results_file:
                results_file_content = results_file.read()

            if results_file_content.strip() == "":
                continue

            experiment_results = json.loads(results_file_content)
            results[path][parameters] = evaluation.calculate(
                experiment_results, gold_standard
            )

    if "gold_standard" not in results:
        results["gold_standard"] = evaluation.calculate(gold_standard, gold_standard)

    return results


def evaluate_experiment(
    evaluation: Evaluation,
    folder: str,
    experiment_name: str,
) -> None:
    output_file_path = os.path.join(
        "results", f"{experiment_name}_{evaluation.get_filename()}.json"
    )
    os.makedirs(os.path.dirname(output_file_path), exist_ok=True)

    # Load existing results if file exists
    all_results = {}
    if os.path.exists(output_file_path):
        try:
            with open(output_file_path, "r", encoding="utf-8") as json_file:
                content = json_file.read()
                if content:
                    all_results = json.loads(content)
        except (json.JSONDecodeError, FileNotFoundError):
            print(
                f"Could not read existing results from {output_file_path}. Starting fresh."
            )
            all_results = {}

    for path in tqdm(os.listdir(folder), desc=f"Evaluating {experiment_name}"):
        subfolder = os.path.join(folder, path, experiment_name)
        if not os.path.isdir(subfolder):
            continue

        with open(
            os.path.join(folder, path, "gold_standard_results.json"), encoding="utf-8"
        ) as gold_standard_file:
            if (file_content := gold_standard_file.read()) == "":
                continue
            gold_standard = json.loads(file_content)

        ignore_existing_results = experiment_name == "paper_evaluation"

        # Pass existing results to avoid re-calculation
        db_results = evaluate_experiment_on_one_database(
            evaluation, subfolder, gold_standard, all_results, ignore_existing_results
        )
        if db_results:  # Only add if there are any results
            all_results[path] = db_results

    with open(output_file_path, "w", encoding="utf-8") as json_file:
        json.dump(all_results, json_file, indent=4)

    if write_averages_per_strategy:
        write_averages(evaluation, all_results, experiment_name)


if __name__ == "__main__":
    for experiment_name in EXPERIMENTS.keys():
        evaluate_experiment(evaluation, folder, experiment_name)
