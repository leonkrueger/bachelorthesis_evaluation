import json
import os
from collections import defaultdict

import numpy as np
from matplotlib import cm
from matplotlib import pyplot as plt

aggregate_funtion = np.average

experiment = "table_deleted_f1_score"
y_label = "Sparsity" if "sparsity" in experiment else "Database F1 Score"
x_label = (
    "Altered names (%)"
    if "synonyms_used" in experiment
    else (
        "Removed tables (%)\nRemoved columns (%)"
        if "table_and_columns_deleted" in experiment
        else (
            "Removed columns (%)"
            if "columns_deleted" in experiment
            else "Removed tables (%)"
        )
    )
)

with open(
    os.path.join("data", "evaluation", f"{experiment}.json"),
    encoding="utf-8",
) as results_file:
    results: dict[str, dict[str, dict[str, float] | float]] = json.load(results_file)

result_collector = defaultdict(lambda: defaultdict(lambda: []))
gold_standard_collector = []

for database, results_per_db in sorted(results.items(), key=lambda x: x[0]):
    for strategy, results_per_strategy in results_per_db.items():
        if strategy == "gold_standard":
            gold_standard_collector.append(results_per_strategy)
        else:
            for parameters, result_per_parameters in results_per_strategy.items():
                result_collector[strategy][parameters].append(result_per_parameters)

aggregated_results = defaultdict(lambda: defaultdict(lambda: 0.0))
for strategy, results_per_strategy in result_collector.items():
    for parameters, result_per_parameters in results_per_strategy.items():
        aggregated_results[strategy][parameters] = aggregate_funtion(
            result_per_parameters
        )

strategy_labels = {
    "gold_standard": "Gold Standard",
    "Llama3_finetuned": "Fine-tuned Llama3",
    "Llama3_not_finetuned": "Not fine-tuned Llama3",
    "Heuristic_exact": "Heuristic (exact)",
    "Heuristic_fuzzy": "Heuristic (fuzzy)",
    "Heuristic_synonyms": "Heuristic (synonyms)",
}

strategy_colors = {
    "gold_standard": "#BBBBBB",
    "Llama3_finetuned": "#4477AA",
    "Llama3_not_finetuned": "#66CCEE",
    "Heuristic_exact": "#CCBB44",
    "Heuristic_fuzzy": "#EE6677",
    "Heuristic_synonyms": "#AA3377",
}


def scatter_parameters(strategy: str):
    fig, ax = plt.subplots()
    ax.set_xlabel(y_label)
    ax.set_ylabel(x_label)

    parameters_values = dict(
        sorted(result_collector[strategy].items(), key=lambda x: float(x[0]))
    )

    for parameter, values in parameters_values.items():
        ax.scatter(
            values,
            [int(100 * float(parameter))] * len(values),
            c=cm.rainbow(np.linspace(0, 1, len(values))),
        )
    plt.savefig(
        os.path.join("data", "evaluation", strategy, f"{experiment}_scatter.png")
    )
    plt.close()


def boxplot_parameters_all_strategies():
    values = []
    labels = []
    titles = []

    if "sparsity" in experiment:
        values.append([gold_standard_collector])
        labels.append([""])
        titles.append(strategy_labels["gold_standard"])

    for strategy, label in strategy_labels.items():
        if strategy not in result_collector:
            continue

        parameters_values = (
            dict(sorted(result_collector[strategy].items(), key=lambda x: float(x[0])))
            if "table_and_columns_deleted" not in experiment
            else dict(
                sorted(
                    result_collector[strategy].items(),
                    key=lambda x: tuple([float(p) for p in x[0].split("_")]),
                )
            )
        )
        values.append(list(parameters_values.values()))
        labels.append(
            [
                (
                    int(100 * float(parameter))
                    if "table_and_columns_deleted" not in experiment
                    else "\n".join(
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
        axs[index].boxplot(
            values[index],
            tick_labels=labels[index],
            showmeans=True,
        )

    fig.tight_layout()
    plt.savefig(os.path.join("data", "evaluation", f"{experiment}_all_strategies.png"))
    plt.close()


def barplot_all_strategies(parameter: str):
    parameter_results = {
        strategy: results[parameter] for strategy, results in result_collector.items()
    }
    number_of_strategies = len(parameter_results)

    fig, axs = plt.subplots(figsize=(12, 4))

    plotted_strategies = 0
    if "sparsity" in experiment:
        number_of_strategies += 1
        axs.bar(
            [
                (number_of_strategies + 5) * result_index + plotted_strategies * 1.5
                for result_index in range(len(gold_standard_collector))
            ],
            height=gold_standard_collector,
            width=[1] * len(gold_standard_collector),
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

    axs.set_xlim(
        -1,
        (number_of_strategies + 5) * (len(list(parameter_results.values())[0]) - 1)
        + (plotted_strategies - 1) * 1.5
        + 1,
    )
    axs.tick_params(axis="x", which="both", bottom=False, top=False, labelbottom=False)
    axs.set_ylim(0, 1)
    axs.set_ylabel(y_label)
    lgd = fig.legend(loc="outside lower center", ncols=plotted_strategies)
    # fig.tight_layout()
    plt.savefig(
        os.path.join("data", "evaluation", f"{experiment}_{parameter}_bar.png"),
        bbox_extra_artists=(lgd,),
        bbox_inches="tight",
    )
    plt.close()


boxplot_parameters_all_strategies()
# barplot_all_strategies("1.0")
