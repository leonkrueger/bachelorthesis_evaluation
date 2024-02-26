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


accuracies = []
null_values = []

with open("bird_address\\gold_standard_results.json") as gold_standard_results_file:
    gold_standard = json.load(gold_standard_results_file)
    null_values.append(calculate_number_of_null_values(gold_standard))

result_file_paths = [
    "bird_address\\evaluation_results_10.json",
    "bird_address\\evaluation_results_50.json",
    "bird_address\\evaluation_results_90.json",
]

for path in result_file_paths:
    with open(path) as results_file:
        results = json.load(results_file)
        accuracies.append(calculate_accuracy(results, gold_standard))
        null_values.append(calculate_number_of_null_values(results))

plt.bar(["0.1", "0.5", "0.9"], accuracies)
plt.xlabel("Ratio of removed table names")
plt.ylabel("Accuracy")
plt.savefig("accuracy.png")
plt.close()

plt.bar(["Gold standard", "0.1", "0.5", "0.9"], null_values)
plt.xlabel("Ratio of removed table names")
plt.ylabel("Number of NULL-values")
plt.savefig("number_of_null_values.png")
plt.close()
