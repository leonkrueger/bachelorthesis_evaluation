import os
from random import Random
from typing import Any

from util.adjustments import EXPERIMENTS
from util.insert_query_parser import parse_insert_query
from util.make_adjustment import make_adjustment

folder = "data"

# strategies = ["Llama3_finetuned", "Llama3", "GPT4", "Heuristics"]
strategies = [
    "missing_tables_0",
    "missing_tables_300",
    "missing_tables_600",
    "missing_tables_1500",
]

random = Random(2572)


def create_experiment(
    experiment_folder: str, experiment: list[tuple[Any]], queries: list[dict[str, Any]]
) -> None:
    adjustment_combinations = {"": queries}

    # Create all combinations of params of the adjustments
    for adjustment in experiment:
        adjustment_combinations = make_adjustment(adjustment, adjustment_combinations)

    for name, queries in adjustment_combinations.items():
        # Generate the files with the inputs
        with open(
            os.path.join(experiment_folder, f"evaluation_input{name}.sql"),
            "w",
            encoding="utf-8",
        ) as output_file:
            for query in queries:
                table_string = (
                    (f"`{query['table']}` ") if "table" in query.keys() else ""
                )
                columns_string = (
                    "("
                    + ", ".join([f"`{column}`" for column in query["columns"]])
                    + ") "
                    if "columns" in query.keys()
                    else ""
                )
                row_values_strings = ", ".join(query["values"])
                modified_query = f"INSERT INTO {table_string}{columns_string}VALUES ({row_values_strings});\n"

                output_file.write(modified_query)

        # Generate empty files for each strategy for the results
        for strategy in strategies:
            os.makedirs(os.path.join(experiment_folder, strategy), exist_ok=True)
            open(
                os.path.join(
                    experiment_folder, strategy, f"evaluation_results{name}.json"
                ),
                "w",
                encoding="utf-8",
            ).close()


# Create all experiments for all databases
for path in os.listdir(folder):
    subfolder = os.path.join(folder, path)
    if not os.path.isdir(subfolder) or path == "evaluation":
        continue

    # Read all queries
    with open(
        os.path.join(subfolder, "inserts_only.sql"), encoding="utf-8"
    ) as queries_file:
        queries = [
            parse_insert_query(query)
            for query in queries_file.readlines()
            if query.strip() != ""
        ]
    random.shuffle(queries)

    # Remove all NULL-values from queries
    for query in queries:
        # SQLite produces a separate statement for each row
        query["values"] = query["values"][0]
    #     query["columns"] = [
    #         column
    #         for column, value in zip(query["columns"], query["values"])
    #         if value.lower() != "null"
    #     ]
    #     query["values"] = [
    #         value for value in query["values"] if value.lower() != "null"
    #     ]

    # Create all experiments
    for experiment_name, experiment in EXPERIMENTS.items():
        if "databases" in experiment and not path in experiment["databases"]:
            continue

        experiment_folder = os.path.join(subfolder, experiment_name)

        # Do not overwrite existing experiments
        if os.path.exists(experiment_folder):
            continue

        os.makedirs(experiment_folder, exist_ok=True)

        create_experiment(experiment_folder, experiment["adjustments"], queries)
