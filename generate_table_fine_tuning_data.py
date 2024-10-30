"""
!!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

Creates the fine-tuning data for the table prediction model.

``name`` needs to be the correct key in the FINE_TUNING dictionary
``file_suffix`` is added to the end of the path (useful if datasets are generated for the same model)
``generate_validation_data`` specifies if validation (True) or fine-tuning (False) data should be generated
``fine_tuning_data_points`` specifies the number of insertions used for fine-tuning
``validation_data_points`` specifies the number of insertions used for validation
``data_sources`` should contain all subfolders of fine_tuning/databases that are used to generate the data
"""

import json
import math
import os
import traceback
from random import Random

from tqdm import tqdm

from util.adjustments import FINE_TUNING
from util.insert_query_parser import parse_insert_query
from util.processing_utils import insertion_to_string
from util.table_prediction_utils import (
    apply_alterations_to_query,
    apply_alterations_to_state,
    get_database_str,
    read_all_insertions,
)

name = "missing_tables"
file_suffix = "_own"
generate_validation_data = False
fine_tuning_data_points = 24000
validation_data_points = 150
data_sources = ["bird", "spider", "wikidb"]

random = Random()


def get_data_for_one_data_source(
    data_sorce_folder: str,
    data_points: int,
    synonyms: dict[str, dict[str, list[str]]],
    validation: bool = False,
) -> list[dict[str, str]]:
    data = []

    databases_folder = os.path.join(
        "fine_tuning",
        "validation_databases" if validation else "databases",
        data_sorce_folder,
    )
    databases = os.listdir(databases_folder)
    data_points_per_database = int(math.ceil(data_points / len(databases)))

    for path in tqdm(databases):
        try:
            full_path = os.path.join(databases_folder, path)
            if not os.path.isfile(full_path) or not full_path.endswith(".sql"):
                continue

            queries, database_state = read_all_insertions(full_path)

            # Sample data points from all queries and create fine tuning data
            for query, table_name, columns in random.sample(
                queries, min(data_points_per_database, len(queries))
            ):
                parsed_query = parse_insert_query(query)
                parsed_query["table"] = table_name
                parsed_query["columns"] = columns
                # Every insert statement contains only one row
                parsed_query["values"] = parsed_query["values"][0]

                apply_alterations_to_query(parsed_query, FINE_TUNING[name])
                query_str = insertion_to_string(parsed_query)

                database_state_for_insertion, expected_table_name = (
                    apply_alterations_to_state(
                        table_name,
                        database_state,
                        int(math.floor(3 * random.random())),
                        (
                            synonyms[path[:-4]][table_name]
                            if table_name in synonyms[path[:-4]]
                            else []
                        ),
                    )
                )
                database_str = get_database_str(
                    database_state_for_insertion, queries, parsed_query["values"]
                )

                instruction = (
                    "Predict the table for this example:\n"
                    f"Query: {query_str}"
                    f"Database State:\n{database_str}"
                )
                response = f"Table: {expected_table_name}"

                if len(instruction) > 3000:
                    continue

                data.append({"Instruction": instruction, "Response": response})
        except Exception:
            print(f"\033[91mERROR: {data_sorce_folder}: Database {path}\033[0m")
            print(traceback.format_exc())

    return random.sample(data, min(fine_tuning_data_points, len(data)))


if __name__ == "__main__":
    with open(
        os.path.join("fine_tuning", "table_synonyms.json"), encoding="utf-8"
    ) as synonyms_file:
        synonyms = json.load(synonyms_file)

    data = []
    data_points_per_source = math.ceil(
        (
            validation_data_points
            if generate_validation_data
            else fine_tuning_data_points
        )
        / len(data_sources)
    )
    for data_source in tqdm(data_sources):
        data.extend(
            get_data_for_one_data_source(
                data_source,
                data_points_per_source,
                synonyms,
                validation=generate_validation_data,
            )
        )

    random.shuffle(data)

    with open(
        os.path.join(
            "fine_tuning",
            "validation_datasets" if generate_validation_data else "datasets",
            (
                f"{name}{file_suffix}.json"
                if generate_validation_data
                else f"{name}_{fine_tuning_data_points}{file_suffix}.json"
            ),
        ),
        mode="w",
        encoding="utf-8",
    ) as dataset_file:
        json.dump(data, dataset_file)
