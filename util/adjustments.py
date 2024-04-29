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
    },
}

FINE_TUNING = {"missing_tables": [(Adjustments.DELETE_TABLE, 0.5)]}
