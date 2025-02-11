from enum import Enum


class Adjustments(Enum):
    DELETE_TABLE = 1
    DELETE_COLUMN = 2
    USE_SYNONYMS = 3


# Dictionary defines the different experiments
# Lists describe the adjustments made in each experiment
# Tuples define the adjustment and parameters
# If both synonyms should be used and tables deleted, it must happen in this order.
EXPERIMENTS = {
    "table_deleted": {
        "adjustments": [(Adjustments.DELETE_TABLE, [0.0, 0.5, 1.0])],
        "y_label": "Ratio of removed table names",
        "strategies": [
            "Llama3_finetuned",
            "Llama3_not_finetuned",
            "Heuristic_exact",
            "Heuristic_fuzzy",
            "Heuristic_synonyms",
        ],
    },
    "columns_deleted": {
        "adjustments": [(Adjustments.DELETE_COLUMN, [0.0, 0.5, 1.0])],
        "y_label": "Ratio of removed column names",
        "strategies": [
            "Llama3_finetuned",
            "Llama3_not_finetuned",
        ],
    },
    "synonyms_used": {
        "adjustments": [(Adjustments.USE_SYNONYMS, [0.0, 0.5, 1.0])],
        "y_label": "Ratio of synonymous names used",
        "strategies": [
            "Llama3_finetuned",
            "Llama3_not_finetuned",
            "Heuristic_exact",
            "Heuristic_fuzzy",
            "Heuristic_synonyms",
        ],
    },
    "table_and_columns_deleted": {
        "adjustments": [
            (Adjustments.DELETE_TABLE, [0.5, 1.0]),
            (Adjustments.DELETE_COLUMN, [0.5, 1.0]),
        ],
        "y_label": "Tables and columns deleted",
        "strategies": [
            "Llama3_finetuned",
            "Llama3_not_finetuned",
            "GPT3_5",
            "GPT4o",
            "GPT4o_mini",
        ],
    },
    "existing_database_schema": {
        "adjustments": [
            (Adjustments.DELETE_TABLE, [0.0, 1.0]),
            (Adjustments.DELETE_COLUMN, [0.0, 1.0]),
        ],
        "predefined_database_schema": True,
        "strategies": [
            "Llama3_finetuned_dc",
            "Llama3_not_finetuned",
        ],
    },
}

FINE_TUNING = {
    "missing_tables": [
        (Adjustments.DELETE_TABLE, 0.5),
        (Adjustments.DELETE_COLUMN, 0.5),
    ],
    "missing_columns": [(Adjustments.DELETE_COLUMN, 0.5)],
}
