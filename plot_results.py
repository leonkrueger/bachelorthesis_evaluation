"""
This script can produce the plots from my thesis. To display the labels for datatype ratios correctly, LaTeX needs to be installed.
"""

import json
import os
from collections import defaultdict
from math import isnan

import numpy as np
from matplotlib import pyplot as plt

aggregate_funtion = np.average

experiment = "table_and_columns_deleted_sparsity"
# strategies_to_consider = None
strategies_to_consider = [
    "GPT4o",
    "Llama3_finetuned_dc",
    "Llama3_not_finetuned",
]
require_same_results = True

evaluation_call = lambda gs_results, results: boxplot_parameters_all_strategies(
    gs_results, results
)
# evaluation_call = lambda gs_results, results: barplot_all_strategies(results, "1.0")
# evaluation_call = lambda gs_results, results: barplot_ratio_averages(
#     results, "Llama3_finetuned_dc", "0.0"
# )
# evaluation_call = lambda x_results, y_results: scatter_all_strategies(
#     x_results, y_results
# )

y_label = "Sparsity" if "sparsity" in experiment else "Database F1 Score"
x_label = (
    "Altered names (%)"
    if "synonyms_used" in experiment
    else (
        "Removed tables (%),\nRemoved columns (%)"
        if "table_and_columns_deleted" in experiment
        else (
            "Removed columns (%)"
            if "columns_deleted" in experiment
            else "Removed tables (%)"
        )
    )
)

strategy_labels = {
    "gold_standard": "Gold Standard",
    # "Llama3_finetuned": "Fine-tuned Llama 3 (old)",
    "Llama3_finetuned_dc": "Fine-tuned Llama 3",
    "Llama3_not_finetuned": "Not fine-tuned Llama 3",
    "Heuristic_exact": "Heuristic (exact)",
    "Heuristic_fuzzy": "Heuristic (fuzzy)",
    "Heuristic_synonyms": "Heuristic (synonyms)",
    "GPT3_5": "GPT-3.5",
    "GPT4o_mini": "GPT-4o mini",
    "GPT4o": "GPT-4o",
}

strategy_colors = {
    "gold_standard": "#BBBBBB",
    "Llama3_finetuned": "#FFFFFF",
    "Llama3_finetuned_dc": "#4477AA",
    "Llama3_not_finetuned": "#66CCEE",
    "Heuristic_exact": "#CCBB44",
    "Heuristic_fuzzy": "#EE6677",
    "Heuristic_synonyms": "#AA3377",
    "GPT3_5": "#CCBB44",
    "GPT4o_mini": "#EE6677",
    "GPT4o": "#AA3377",
}

ratio_labels = {
    "0.1": r"$r_s \leq 10\%$",
    "0.3": r"$10\% < r_s \leq 30\%$",
    "0.7": r"$30\% < r_s < 70\%$",
    "0.9": r"$70\% \leq r_s < 90\%$",
    "1.0": r"$90\% \leq r_s$",
}

ratio_colors = {
    "0.1": "#4477AA",
    "0.3": "#66CCEE",
    "0.7": "#CCBB44",
    "0.9": "#EE6677",
    "1.0": "#AA3377",
}

data_type_evaluation_identifier = "_only_"


def load_results(
    file_path: str,
    strategies_to_consider: list[str] = None,
    require_same_results: bool = True,
) -> tuple[list[float], dict[str, dict[str, list[float]]]]:
    with open(file_path, encoding="utf-8") as results_file:
        results = json.load(results_file)

    result_collector = (
        defaultdict(lambda: defaultdict(lambda: defaultdict(lambda: [])))
        if data_type_evaluation_identifier in experiment
        else defaultdict(lambda: defaultdict(lambda: []))
    )
    gold_standard_collector = []

    for database, results_per_db in sorted(results.items(), key=lambda x: x[0]):
        strategies = (
            strategies_to_consider if strategies_to_consider else results_per_db.keys()
        )
        if "gold_standard" not in strategies:
            strategies.append("gold_standard")

        if require_same_results and any(
            [
                len(results_per_db[s]) == 0
                for s in strategies
                if isinstance(results_per_db[s], dict)
            ]
        ):
            continue

        for strategy in strategies:
            if strategy == "gold_standard":
                # Is only required in sparsity where no data type evaluation is done
                if data_type_evaluation_identifier in experiment:
                    continue

                if isnan(results_per_db[strategy]):
                    continue

                gold_standard_collector.append(results_per_db[strategy])
            else:
                for parameters, result_per_parameters in results_per_db[
                    strategy
                ].items():
                    if require_same_results and any(
                        [
                            parameters not in results_per_db[s]
                            for s in strategies
                            if s != "gold_standard"
                        ]
                    ):
                        continue

                    if data_type_evaluation_identifier in experiment:
                        for (
                            data_type_ratio,
                            results_per_ratio,
                        ) in result_per_parameters.items():
                            if isnan(results_per_ratio):
                                continue

                            result_collector[strategy][parameters][
                                data_type_ratio
                            ].append(results_per_ratio)
                    else:
                        if isnan(result_per_parameters):
                            continue

                        result_collector[strategy][parameters].append(
                            result_per_parameters
                        )

    return gold_standard_collector, result_collector


def boxplot_parameters_all_strategies(
    gs_results: list[float], results: dict[str, dict[str, list[float]]]
):
    values = []
    labels = []
    titles = []

    if "sparsity" in experiment:
        values.append([gs_results])
        labels.append([""])
        titles.append(strategy_labels["gold_standard"])

    for strategy, label in strategy_labels.items():
        if strategy not in results:
            continue

        parameters_values = (
            dict(sorted(results[strategy].items(), key=lambda x: float(x[0])))
            if "table_and_columns_deleted" not in experiment
            else dict(
                sorted(
                    results[strategy].items(),
                    key=lambda x: tuple([float(p) for p in x[0].split("_")]),
                )
            )
        )
        for p, v in parameters_values.items():
            print(strategy, p, np.average(v))
        values.append(list(parameters_values.values()))
        labels.append(
            [
                (
                    int(100 * float(parameter))
                    if "table_and_columns_deleted" not in experiment
                    else ",\n".join(
                        [str(int(100 * float(p))) for p in parameter.split("_")]
                    )
                )
                for parameter in parameters_values.keys()
            ]
        )
        titles.append(label)

    fig, axs = plt.subplots(
        1, len(values), sharey=True, figsize=(2 * len(values) + 2, 4)
    )
    axs[0].set_ylabel(y_label)

    for index in range(len(values)):
        axs[index].set_title(titles[index])
        if titles[index] != strategy_labels["gold_standard"]:
            axs[index].set_xlabel(x_label)
        axs[index].set_ylim(-0.02, 1.02)
        axs[index].grid(True, axis="y", color="0.9", linestyle="--")
        axs[index].boxplot(
            values[index],
            tick_labels=labels[index],
            showmeans=True,
        )

    fig.tight_layout()
    plt.savefig(
        os.path.join(
            "data",
            "evaluation",
            f"{experiment}{'_selected_strategies' if strategies_to_consider else '_all_strategies'}.png",
        ),
    )
    plt.close()


def barplot_all_strategies(results: dict[str, dict[str, list[float]]], parameter: str):
    parameter_results = {
        strategy: results[parameter] for strategy, results in results.items()
    }
    number_of_strategies = len(parameter_results)

    fig, axs = plt.subplots(figsize=(12, 4))

    plotted_strategies = 0
    if "sparsity" in experiment:
        number_of_strategies += 1
        axs.bar(
            [
                (number_of_strategies + 5) * result_index + plotted_strategies * 1.5
                for result_index in range(len(gs_results))
            ],
            height=gs_results,
            width=[1] * len(gs_results),
            color=strategy_colors["gold_standard"],
            label=strategy_labels["gold_standard"],
        )
        plotted_strategies += 1

    for strategy_label in strategy_labels.items():
        if strategy_label[0] not in parameter_results:
            continue
        results = parameter_results[strategy_label[0]]
        axs.bar(
            [
                (number_of_strategies + 5) * result_index + plotted_strategies * 1.5
                for result_index in range(len(results))
            ],
            height=results,
            width=[1] * len(results),
            color=strategy_colors[strategy_label[0]],
            label=strategy_label[1],
        )
        plotted_strategies += 1

    axs.set_axisbelow(True)
    axs.grid(True, axis="y", color="0.9", linestyle="--")

    axs.tick_params(axis="x", which="both", bottom=False, top=False, labelbottom=False)
    axs.set_xlim(
        -1,
        (number_of_strategies + 5) * (len(list(parameter_results.values())[0]) - 1)
        + (plotted_strategies - 1) * 1.5
        + 1,
    )

    axs.set_ylim(0, 1)
    axs.set_ylabel(y_label)

    lgd = fig.legend(loc="outside lower center", ncols=plotted_strategies)

    plt.savefig(
        os.path.join(
            "data",
            "evaluation",
            f"{experiment}_{parameter}_bar{'_selected_strategies' if strategies_to_consider else ''}.png",
        ),
        bbox_extra_artists=(lgd,),
        bbox_inches="tight",
    )
    plt.close()


def barplot_ratio_averages(
    results: dict[str, dict[str, dict[str, list[float]]]],
    strategy: str,
    parameters: str,
):
    results = {
        ratio: np.average(results[strategy][parameters][ratio])
        for ratio in ratio_labels.keys()
    }

    fig, axs = plt.subplots(figsize=(6, 4))

    plt.bar(
        [index * 1.5 for index in range(len(results))],
        height=results.values(),
        width=[1] * len(results),
        color=[ratio_colors[ratio] for ratio in results.keys()],
    )

    axs.set_axisbelow(True)
    axs.grid(True, axis="y", color="0.9", linestyle="--")

    axs.tick_params(axis="x", which="both", bottom=False, top=False)
    axs.set_xlim(
        -1,
        (len(results) - 1) * 1.5 + 1,
    )
    axs.set_xticks(
        [index * 1.5 for index in range(len(results))],
        [ratio_labels[ratio] for ratio in results.keys()],
        rotation=25,
    )

    axs.set_ylim(0, 1)
    axs.set_ylabel(y_label)

    plt.savefig(
        os.path.join(
            "data",
            "evaluation",
            f"{experiment}_{strategy}_{parameters}_bar.png",
        ),
        bbox_inches="tight",
    )
    plt.close()


def scatter_all_strategies(
    results_x: dict[str, dict[str, list[float]]],
    results_y: dict[str, dict[str, list[float]]],
):
    # parameter_results = {
    #     strategy: results[parameter] for strategy, results in results.items()
    # }
    # number_of_strategies = len(parameter_results)

    fig, axs = plt.subplots(figsize=(6, 6))
    max_parameters = 0

    for strategy, label in strategy_labels.items():
        if strategy not in results_y:
            continue

        max_parameters = max(max_parameters, len(results_y[strategy]))
        parameters_values = (
            sorted(results_y[strategy].keys(), key=lambda x: float(x))
            if "table_and_columns_deleted" not in experiment
            else sorted(
                results_y[strategy].keys(),
                key=lambda x: tuple([float(p) for p in x.split("_")]),
            )
        )

        for parameter in parameters_values:
            if parameter != "1.0_1.0":
                continue
            axs.scatter(
                *zip(
                    *list(
                        zip(
                            results_x,
                            results_y[strategy][parameter],
                        )
                    )
                ),
                c=strategy_colors[strategy],
                label=label,
                s=20,
            )

    # axs.set_axisbelow(True)
    # axs.grid(True, axis="y", color="0.9", linestyle="--")

    axs.set_xscale("log")
    axs.set_xlabel("Number of columns in gold standard database")

    axs.set_ylim(0, 1)
    axs.set_ylabel(y_label)
    axs.legend()

    # lgd = fig.legend(loc="upper center", ncols=max_parameters)

    plt.savefig(
        os.path.join(
            "data",
            "evaluation",
            f"{experiment}_scatter{'_selected_strategies' if strategies_to_consider else ''}.png",
        ),
        # bbox_extra_artists=(lgd,),
        bbox_inches="tight",
    )
    plt.close()


if __name__ == "__main__":
    gs_results, results = load_results(
        os.path.join("data", "evaluation", f"{experiment}.json"),
        strategies_to_consider,
        require_same_results,
    )
    evaluation_call(gs_results, results)

    # x_gs, x_results = load_results(
    #     os.path.join("data", "evaluation", f"{experiment[:-9]}_number_of_columns.json"),
    #     strategies_to_consider,
    #     require_same_results,
    # )
    # evaluation_call(x_gs, results)
