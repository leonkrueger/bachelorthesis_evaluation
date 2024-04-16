import io
import json
import os
import shutil
import tokenize
from random import Random

from util.processing_utils import get_data_from_create_table

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!


folder = "data"
max_inserts = 500

random = Random(8463)


def dump_inserts(
    inserts: list[str], max_inserts: int, inserts_only_file, gold_standard_file
):
    for insert in random.sample(
        inserts,
        min(max_inserts, len(inserts)),
    ):
        # Write query for inserts only
        values_index = insert.find("VALUES")
        insert_with_attributes = (
            insert[:values_index] + attributes + insert[values_index:]
        )
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
        # Replace call because sometimes sql-files contain commas in weird position
        queries_file_content = queries_file.read().replace("\n,", ",\n")

        # Calculate max number of inserts per table
        number_tables = queries_file_content.count("CREATE TABLE")
        max_inserts_per_table = int(max_inserts / number_tables)

        table_old_name = ""
        table_new_name = ""
        attributes = "()"
        inserts_into_current_table = []
        for query in queries_file_content.split(";\n"):
            query = query.strip()

            if query.startswith("CREATE TABLE"):
                # Dump the insert statements of the last table
                dump_inserts(
                    inserts_into_current_table,
                    max_inserts_per_table,
                    inserts_only_file,
                    gold_standard_file,
                )
                inserts_into_current_table = []

                table_old_name, table_new_name, table_keys, attribute_data = (
                    get_data_from_create_table(query, use_mysql_quotes=False)
                )
                primary_keys[table_new_name] = table_keys

                attributes = (
                    f"({', '.join([attribute[0] for attribute in attribute_data])}) "
                )
                fixed_create_statement = (
                    f"CREATE TABLE {table_new_name}\n("
                    + ",\n".join([" ".join(attribute) for attribute in attribute_data])
                    + ")"
                )
                gold_standard_file.write(fixed_create_statement + ";\n")

            if query.startswith("INSERT"):
                # Create correct insert statement
                inserts_into_current_table.append(
                    query.replace(table_old_name, table_new_name)
                )

        dump_inserts(
            inserts_into_current_table,
            max_inserts_per_table,
            inserts_only_file,
            gold_standard_file,
        )

    # with open(
    #     os.path.join(subfolder, "primary_keys.json"), "w", encoding="utf-8"
    # ) as primary_keys_file:
    #     json.dump(primary_keys, primary_keys_file)

    open(
        os.path.join(subfolder, "gold_standard_results.json"), "w", encoding="utf-8"
    ).close()

    shutil.copy2(full_path, os.path.join(subfolder, path))
    os.remove(full_path)
