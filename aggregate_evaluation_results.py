import json
import os
from collections import defaultdict

from numpy import average, median

aggregate_funtion = average

with open(
    os.path.join("data", "evaluation", "table_deleted_sparsity.json"),
    encoding="utf-8",
) as results_file:
    results: dict[str, dict[str, dict[str, float] | float]] = json.load(results_file)

result_collector = defaultdict(lambda: defaultdict(lambda: []))
gold_standard_collector = []

for database, results_per_db in results.items():
    # if not "wikidb_" in database:
    #     continue
    for strategy, results_per_strategy in results_per_db.items():
        if strategy == "gold_standard":
            gold_standard_collector.append(results_per_strategy)
        else:
            for parameters, result_per_parameters in results_per_strategy.items():
                result_collector[strategy][parameters].append(result_per_parameters)

for key_1, values_1 in result_collector.items():
    for key_2, values_2 in values_1.items():
        result_collector[key_1][key_2] = aggregate_funtion(values_2)

print(dict(result_collector))
print("Gold Standard:", aggregate_funtion(gold_standard_collector))
