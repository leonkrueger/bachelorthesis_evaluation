This repository contains all evaluation data from my bachelor thesis ([Link](https://github.com/leonkrueger/bachelorthesis)) and the scripts needed to create and evaluate the data.

# How to use scripts?
The scripts each have an explanation on their usage at the beginning of the file.

For generating fine-tuning data, just use the fine_tuning_generate_data.py script.

For generating evaluation data, the order of usage is:
1. prepare_inserts.py - Prepare inserts from database dump file
2. create_evaluation_inserts.py - Generates the evaluation inserts
3. evaluate_results.py - After executing the experiments, use this file to evaluate the results
4. plot_results.py - Can plot the evaluated results

# Fine-tuned models
The best working models for both tasks were:
- missing_tables_12000_1_csv_data_collator
- missing_columns_12000_1_own_data_collator

These were also the models I used in the evaluation of my thesis.

# Contents of this repository

```
├── README.md                                               # 
├── column_mapping_evaluate.py                              # Evaluates the results of the column mapping task
├── column_mapping_generate_data.py                         # Creates the data to evaluate the performance of the 3 database scenarios for the column mapping task
├── create_evaluation_inserts.py                            # Creates the datasets for the experiments
├── evaluate_results.py                                     # Evaluates the resulting databases from the experiments
├── fine_tuning_generate_data.py                            # Creates the fine-tuning data
├── plot_results.py                                         # Can plot the results
├── prepare_inserts.py                                      # Prepares the databases to generate fine-tuning and evaluation data
├── synonyms_generate_data.py                               # Creates the data for the synonym generation
├── table_prediction_evaluate.py                            # Evaluates the results of the table prediction task
├── table_prediction_generate_data.py                       # Creates the data to evaluate the performance of the 3 database scenarios for the table prediction task
├── evaluate_results.slurm                                  # Script to run evaluate_results.py on server
├── data                                                    # Contains all data used for the final experiments
│   ├── column_synonym_generation_data.json                 # Data used for generating synonyms for the columns
│   ├── column_synonyms.json                                # Generated synonyms for the columns
│   ├── table_synonym_generation_data.json                  # Data used for generating synonyms for the tables
│   ├── table_synonyms.json                                 # Generated synonyms for the tables
│   ├── evaluation                                          # Contains the evaluated experiment results
│   │   ├── *experiment*_*metric*.json                      # Contains all scores for this metric on the experiment
│   │   └── *strategy*                                      # Contains the averaged results for a specific strategy
│   │       └── *experiment*.json                           # Contains the averaged results for a specific strategy on one experiment
│   └── *database*                                          # Contains all experiment data for the specific database
│       ├── gold_standard_input.sql                         # Input to create the gold standard database
│       ├── gold_standard_results.json                      # Resulting database of the gold standard
│       ├── inserts_only.sql                                # Same inserts (with specified columns) as gold_standard_input.sql, but without the create table statements
│       ├── *database*.sql                                  # The original database, that all experiment data comes from
│       └── *experiment*                                    # Contains the data for a specific experiment
│           ├── evaluation_input.sql                        # The input for the experiment
│           └── *strategy*                                  # Contains the data for a specific strategy
│               └── evaluation_results.json                 # The results of the strategy
├── fine_tuning                                             # Contains all fine-tuning data
│   ├── column_synonym_generation_data.json                 # Data used for generating synonyms for the columns
│   ├── column_synonyms.json                                # Generated synonyms for the columns
│   ├── table_synonym_generation_data.json                  # Data used for generating synonyms for the tables
│   ├── table_synonyms.json                                 # Generated synonyms for the tables
│   ├── datasets                                            # Contains the training datasets
│   │   └── *dataset*.json                                  # One dataset used for fine-tuning
│   └── validation_datasets                                 # Contains the validation datasets
│       └── *dataset*.json                                  # One dataset used for validation
├── further_evaluation                                      # Contains all data for the experiments used for evaluating the fine-tuned models
│   └── *experiment*                                        # Contains all data for one experiment
│       ├── *scenario*.json                                 # The experiment input
│       └── *strategy*                                      # Contains the result data for this strategy (fine-tuned model)
│           ├── results.json                                # Evaluated results
│           └── results_*scenario*.json                     # Results for the according *scenario*.json input file
└── util                                                    # Contains utils that were used across multiple scripts
    ├── adjustments.py                                      # Specifies the parameters for the experiments and fine-tuning processes
    ├── generate_utils.py                                   # Utils for generating experiment data
    ├── insert_parser.py                                    # Parses one insertion
    ├── make_adjustment.py                                  # Used for making adjustments to insertions (e.g. removing the table)
    ├── processing_utils.py                                 # Utils for other scripts
    └── evaluation                                          # Contains all evaluation metrics used
        ├── accuracy.py                                     # Accuracy (not used)
        ├── evaluation.py                                   # Super class for better exchangeability
        ├── f1_score.py                                     # Database F1-Score
        ├── number_of_tables.py                             # Number of tables in comparison to gold standard
        └── sparsity.py                                     # Sparsity
```