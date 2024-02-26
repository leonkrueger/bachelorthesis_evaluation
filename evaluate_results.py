import json
import matplotlib.pyplot as plt


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
            result_keys = [(row[0], row[1]) for row in results[query]]
        else:
            gold_standard_keys = [row[0] for row in gold_standard[query]]
            result_keys = [row[0] for row in results[query]]

        for inserted_value in gold_standard_keys:
            if inserted_value in result_keys:
                correct_inserts += 1
            total_inserts += 1

    return correct_inserts / float(total_inserts)


accuracies = []

with open("gold_standard_results.json") as gold_standard_results_file:
    gold_standard = json.load(gold_standard_results_file)

with open("evaluation_results_10.json") as results_file:
    accuracies.append(calculate_accuracy(json.load(results_file), gold_standard))

with open("evaluation_results_50.json") as results_file:
    accuracies.append(calculate_accuracy(json.load(results_file), gold_standard))

with open("evaluation_results_90.json") as results_file:
    accuracies.append(calculate_accuracy(json.load(results_file), gold_standard))

plt.bar(["0.1", "0.5", "0.9"], accuracies)
# plt.title("Table predictions")
plt.xlabel("Ratio of removed table names")
plt.ylabel("Accuracy")
plt.savefig("plot.png")
plt.close()
