from enum import Enum


class Adjustments(Enum):
    DELETE_TABLE = 100
    DELETE_COLUMN = 200


# Dictionary defines the different experiments
# Lists describe the adjustments made in each experiment
# Tuples define the adjustment and parameters
EXPERIMENTS = {
    "delete_table": {
        "adjustments": [(Adjustments.DELETE_TABLE, [0.0, 0.25, 0.5, 0.75, 1.0])],
        "y_label": "Ratio of removed table names",
        "strategies": ["Llama3_finetuned", "Llama3", "GPT4", "Heuristics"],
    },
    "finetuning_missing_tables": {
        "adjustments": [(Adjustments.DELETE_TABLE, [0.0, 0.5, 1.0])],
        "y_label": "Ratio of removed table names",
        "databases": [
            "bird_card_games",
            "bird_european_football_2",
            "bird_financial",
            "spider_company_office",
            "spider_theme_gallery",
            "spider_workshop_paper",
            "wikidb_burial-vault",
            "wikidb_chemotaxis-methyl-accepting-receptor-tar-related-ligand-binding-domain-protein-family",
            "wikidb_japans-top-100-waterfalls",
        ],
        "strategies": [
            "missing_tables_0",
            "missing_tables_300",
            "missing_tables_600",
            "missing_tables_1500",
        ],
    },
}

FINE_TUNING = {
    "missing_tables": [(Adjustments.DELETE_TABLE, 0.5)],
    "missing_columns": [(Adjustments.DELETE_COLUMN, 0.5)],
}
