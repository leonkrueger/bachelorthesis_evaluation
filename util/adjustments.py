from enum import Enum


class Adjustments(Enum):
    DELETE_TABLE = 100
    DELETE_COLUMN = 200


# Dictionary defines the different experiments
# Lists describe the adjustments made in each experiment
# Tuples define the adjustment and parameters
EXPERIMENTS = {
    "delete_table": (
        [(Adjustments.DELETE_TABLE, [0.0, 0.25, 0.5, 0.75, 1.0])],
        "Ratio of removed table names",
    ),
    "finetuning_missing_tables": (
        [(Adjustments.DELETE_TABLE, [0.0, 0.5, 1.0])],
        "Ratio of removed table names",
    ),
}

FINE_TUNING = {"missing_tables": [(Adjustments.DELETE_TABLE, 0.5)]}
