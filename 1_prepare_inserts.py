import io
import json
import os
import shutil
import tokenize
from random import Random

# !!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!


folder = "data"
max_inserts = 500

random = Random(8463)


def remove_quotes(attribute: str) -> str:
    """Replace the quotes used in SQLITE with the ones used in MYSQL"""
    return (
        f"`{attribute[1:-1]}`"
        if attribute[0] == "'" or attribute[0] == '"'
        else attribute
    )


def map_type(type: str) -> str:
    type_mapping = {
        "TEXT": "VARCHAR(255)",
        "VARCHAR": "VARCHAR(255)",
        "REAL": "DOUBLE",
        "DECIMAL": "DOUBLE",
        "INTEGER": "BIGINT",
        "INT": "BIGINT",
        "NUMERIC": "BIGINT",
        "DATE": "DATE",
        "DATETIME": "DATETIME",
        "BLOB": "BLOB",
    }
    if type.upper() not in type_mapping.keys():
        print(f"ERROR: NO TYPE MAPPING FOR TYPE {type}")
        return type
    return type_mapping[type.upper()]


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

                # Get the column information needed
                attribute_start_index = query.find("(")
                attribute_data = [
                    [
                        token.string
                        for token in tokenize.generate_tokens(
                            io.StringIO(attribute).readline
                        )
                        if token.string.strip() != ""
                    ]
                    for attribute in query[
                        attribute_start_index + 1 : len(query) - 1
                    ].split(",\n")
                ]

                # Get table name
                query_table_name_data = [
                    token.string
                    for token in tokenize.generate_tokens(
                        io.StringIO(query[:attribute_start_index]).readline
                    )
                    if token.string.strip() != ""
                ]
                table_name_offset = (
                    1 if any([token == "`" for token in query_table_name_data]) else 0
                )
                table_name = (
                    query_table_name_data[2 + table_name_offset]
                    if "if" != query_table_name_data[2].lower()
                    else query_table_name_data[5 + table_name_offset]
                )
                table_old_name = table_name
                table_name = remove_quotes(table_name)
                table_new_name = table_name

                # Save primary keys of the table
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
                    (
                        [remove_quotes(attribute[0]), map_type(attribute[1])]
                        if attribute[0] != "`"
                        else [remove_quotes(attribute[1]), map_type(attribute[3])]
                    )
                    for attribute in attribute_data
                    if attribute[1].lower() != "key"
                    and attribute[0].lower() != "constraint"
                    and (attribute[0] != "-" or attribute[1] != "-")
                ]
                attributes = (
                    f"({', '.join([attribute[0] for attribute in attribute_data])}) "
                )
                fixed_create_statement = (
                    f"CREATE TABLE {table_name}\n("
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

    with open(
        os.path.join(subfolder, "primary_keys.json"), "w", encoding="utf-8"
    ) as primary_keys_file:
        json.dump(primary_keys, primary_keys_file)

    open(
        os.path.join(subfolder, "gold_standard_results.json"), "w", encoding="utf-8"
    ).close()

    shutil.copy2(full_path, os.path.join(subfolder, path))
    os.remove(full_path)
