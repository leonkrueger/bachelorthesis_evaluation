import os
import shutil
from random import Random
import json


# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!


folder = "bird"
max_inserts = 500

random = Random(8463)


def map_type(type: str) -> str:
    type_mapping = {
        "TEXT": "VARCHAR(255)",
        "REAL": "DOUBLE",
        "INTEGER": "BIGINT",
        "DATE": "DATE",
    }
    if type not in type_mapping.keys():
        print(f"ERROR: NO TYPE MAPPING FOR TYPE {type}")
        return type
    return type_mapping[type]


def dump_inserts(
    inserts: list[str], max_inserts: int, inserts_only_file, gold_standard_file
):
    for insert in random.sample(
        inserts,
        min(max_inserts, len(inserts)),
    ):
        index = insert.find("VALUES")
        insert_with_attributes = insert[:index] + attributes + insert[index:]
        inserts_only_file.write(insert_with_attributes + ";\n")
        gold_standard_file.write(insert + ";\n")


for path in os.listdir(folder):
    full_path = os.path.join(folder, path)
    if not os.path.isfile(full_path) or not full_path.endswith(".sql"):
        continue

    # Create subfolder
    subfolder = full_path.split(".")[0]
    os.makedirs(subfolder, exist_ok=True)
    primary_keys = {}

    with open(full_path, encoding="utf-8") as queries_file, open(
        os.path.join(subfolder, "inserts_only.sql"), "w", encoding="utf-8"
    ) as inserts_only_file, open(
        os.path.join(subfolder, "gold_standard_input.sql"), "w", encoding="utf-8"
    ) as gold_standard_file:
        queries_file_content = queries_file.read()

        # Calculate max number of inserts per table
        number_tables = queries_file_content.count("CREATE TABLE")
        max_inserts_per_table = int(max_inserts / number_tables)

        attributes = "()"
        inserts_into_current_table = []
        for query in queries_file_content.split(";\n"):
            query = query.strip()

            if query.startswith("CREATE"):
                # Dump the insert statements of the last table
                dump_inserts(
                    inserts_into_current_table,
                    max_inserts_per_table,
                    inserts_only_file,
                    gold_standard_file,
                )
                inserts_into_current_table = []

                # Get the column information needed
                attribute_start_index = query.find("(")
                attribute_data = [
                    attribute.split()
                    for attribute in query[
                        attribute_start_index + 1 : len(query) - 1
                    ].split(",\n")
                ]

                # Save primary keys of each table
                table_name = (
                    query.split()[2]
                    if not "IF NOT EXISTS" in query
                    else query.split()[5]
                )
                if len(attribute_data[0]) > 2 and attribute_data[0][2] == "primary":
                    primary_keys[table_name] = [attribute_data[0][0]]
                else:
                    primary_key_data = [
                        attribute
                        for attribute in attribute_data
                        if attribute[0] == "primary"
                    ]
                    if len(primary_key_data) > 0:  # WikiDB has no defined primary keys
                        number_of_keys = (
                            len(primary_key_data[0])
                            - 2  # For tokens "primary" and "key"
                        )
                        primary_keys[table_name] = [
                            attribute[0]
                            for index, attribute in enumerate(attribute_data)
                            if index < number_of_keys
                        ]

                # Get the right data types and create the correct "CREATE TABLE" statement
                attribute_data = [
                    [attribute[0], map_type(attribute[1])]
                    for attribute in attribute_data
                    if attribute[1].lower() != "key"
                ]
                attributes = (
                    f"({', '.join([attribute[0] for attribute in attribute_data])}) "
                )
                fixed_create_statement = (
                    query[: attribute_start_index + 1]
                    + ",\n".join([" ".join(attribute) for attribute in attribute_data])
                    + ")"
                )
                gold_standard_file.write(fixed_create_statement + ";\n")

            if query.startswith("INSERT"):
                # Create correct insert statement
                inserts_into_current_table.append(query)

        dump_inserts(
            inserts_into_current_table,
            max_inserts_per_table,
            inserts_only_file,
            gold_standard_file,
        )

    with open(
        os.path.join(subfolder, "primary_keys.json"), "w", encoding="utf-8"
    ) as primary_keys_file:
        json.dump(primary_keys, primary_keys_file)

    open(
        os.path.join(subfolder, "gold_standard_results.json", "w", encoding="utf-8")
    ).close()

    shutil.copy2(full_path, os.path.join(subfolder, path))
    os.remove(full_path)
