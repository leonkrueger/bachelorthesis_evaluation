"""
``folder`` should contain the subfolders that were created by the script prepare_inserts.py!

Creates the datasets for the experiments defined in util.adjustments. Does not overwrite existing datasets.
"""

import json
import os
from random import Random
from typing import Any

from util.adjustments import EXPERIMENTS
from util.insert_parser import parse_insert
from util.make_adjustment import make_adjustment
from util.processing_utils import insert_to_string, is_usable_value

folder = "data"

random = Random()

with open(
    os.path.join("data", "table_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    table_synonyms = json.load(synonyms_file)

with open(
    os.path.join("data", "column_synonyms.json"), encoding="utf-8"
) as synonyms_file:
    column_synonyms = json.load(synonyms_file)


def create_experiment(
    experiment_folder: str,
    database_name: str,
    experiment: list[tuple[Any]],
    strategies: list[str],
    inserts: list[dict[str, Any]],
    predefined_database_schema: bool,
) -> None:
    adjustment_combinations = {"": inserts}

    # Create all combinations of params of the adjustments
    for adjustment in experiment:
        adjustment_combinations = make_adjustment(
            adjustment,
            adjustment_combinations,
            table_synonyms[database_name],
            column_synonyms[database_name],
        )

    for name, inserts in adjustment_combinations.items():
        # Generate the files with the inputs
        with open(
            os.path.join(experiment_folder, f"evaluation_input{name}.sql"),
            "w",
            encoding="utf-8",
        ) as output_file:
            if predefined_database_schema:
                output_file.write("!PREDEFINED_DATABASE_SCHEMA;\n")

            for insert in inserts:
                output_file.write(insert_to_string(insert, True))

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


if __name__ == "__main__":
    # Create all experiments for all databases
    for path in os.listdir(folder):
        subfolder = os.path.join(folder, path)
        if not os.path.isdir(subfolder) or path == "evaluation":
            continue

        # Read all inserts
        with open(
            os.path.join(subfolder, "inserts_only.sql"), encoding="utf-8"
        ) as inserts_file:
            inserts = [
                parse_insert(insert)
                for insert in inserts_file.readlines()
                if insert.strip() != ""
            ]
        random.shuffle(inserts)

        # Remove all NULL-values from inserts
        for insert in inserts:
            # SQLite produces a separate statement for each row
            insert["values"] = insert["values"][0]
            insert["columns"], insert["values"] = [
                list(x)
                for x in zip(
                    *list(
                        filter(
                            lambda pair: is_usable_value(pair[1]),
                            zip(insert["columns"], insert["values"]),
                        )
                    )
                )
            ]

        # Create all experiments
        for experiment_name, experiment in EXPERIMENTS.items():
            if "databases" in experiment and not path in experiment["databases"]:
                continue

            experiment_folder = os.path.join(subfolder, experiment_name)

            # Do not overwrite existing experiments
            if os.path.exists(experiment_folder):
                continue

            os.makedirs(experiment_folder, exist_ok=True)

            create_experiment(
                experiment_folder,
                path.split("_", 1)[1],
                experiment["adjustments"],
                experiment["strategies"],
                inserts,
                experiment.get("predefined_database_schema", False),
            )
