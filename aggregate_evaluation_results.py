import json
import os
from collections import defaultdict

from numpy import average, median

aggregate_funtion = len

with open(
    os.path.join("data", "evaluation", "synonyms_used_f1_score.json"),
    encoding="utf-8",
) as results_file:
    results: dict[str, dict[str, dict[str, float] | float]] = json.load(results_file)

result_collector = defaultdict(lambda: defaultdict(lambda: defaultdict(lambda: [])))
gold_standard_collector = []

for database, results_per_db in results.items():
    dataset = database.split("_", 1)[0]
    for strategy, results_per_strategy in results_per_db.items():
        if strategy == "gold_standard":
            gold_standard_collector.append(results_per_strategy)
        else:
            for parameters, result_per_parameters in results_per_strategy.items():
                result_collector[dataset][strategy][parameters].append(
                    result_per_parameters
                )

result_collector = aggregate_funtion(
    [
        value
        for key_1, values_1 in result_collector.items()
        for key_2, values_2 in values_1.items()
        for key_3, values_3 in values_2.items()
        for value in values_3
        if key_2 == "Llama3_finetuned_dc" and key_3 == "0.0" and value == 1.0
    ]
)

print(result_collector)


# for dataset in result_collector.keys():
#     s2_better = 0
#     for s1, s2 in zip(
#         result_collector[dataset]["Llama3_finetuned_dc"]["1.0_1.0"],
#         result_collector[dataset]["GPT4o"]["1.0_1.0"],
#     ):
#         if s1 == s2:
#             s2_better += 1

#     print(f"S2 better in {s2_better} databases in {dataset}.")
