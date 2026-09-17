"""
!!! WORKS ONLY WITH DUMP FILES FROM SQLITE3 !!!

Prepares the inserts of all databases in the folder specified in attribute ``folder`` by
- selecting ``max_inserts`` random inserts from each database while distributing them evenly across all tables
- inserting the column names into each insert
- adjusting the syntax of each insert (e.g. data types and quotation marks)

After doing this, it creates three new files in a new subfolder:
- gold_standard_input.sql: Includes 'CREATE TABLE' statements, so that correct database is generated.
- gold_standard_results.json: Can be used to better evaluate the resulting databases.
- inserts_only: Only contains selected inserts and is used for creating the evaluation datasets.
"""

import os
import shutil
import json
from random import Random
from collections import defaultdict
from tqdm import tqdm

from util.processing_utils import get_data_from_create_table

folder = "test_data"
max_inserts = 175

random = Random()


def _split_values(values: str) -> list[str]:
    """Split one SQL VALUES tuple while respecting quoted commas."""
    result = []
    start = 0
    quote = None
    index = 0
    while index < len(values):
        character = values[index]
        if quote:
            if character == quote:
                if index + 1 < len(values) and values[index + 1] == quote:
                    index += 1
                else:
                    quote = None
        elif character in "'\"":
            quote = character
        elif character == ",":
            result.append(values[start:index].strip())
            start = index + 1
        index += 1
    result.append(values[start:].strip())
    return result


def _insert_values(insert: str) -> list[str]:
    values_start = insert.upper().find("VALUES") + len("VALUES")
    values = insert[values_start:].strip()
    if not values.startswith("(") or not values.endswith(")"):
        raise ValueError(f"Could not parse INSERT values: {insert}")
    return _split_values(values[1:-1])


def _value_key(value: str) -> str | None:
    value = value.strip()
    if value.upper() == "NULL":
        return None
    if len(value) >= 2 and value[0] in "'\"" and value[-1] == value[0]:
        return value[1:-1].replace(value[0] * 2, value[0])
    return value


def _columns_by_name(columns: list[list[str]]) -> dict[str, int]:
    return {column[0].strip("`").lower(): index for index, column in enumerate(columns)}


def _table_key(name: str) -> str:
    return name.strip("`").lower().replace(" ", "_").replace("-", "_")


def select_valid_inserts(tables, foreign_keys, max_inserts: int):
    """Select dependency closures from deepest tables within one global budget."""
    columns_by_table = {
        table: _columns_by_name(data["attributes"]) for table, data in tables.items()
    }
    foreign_keys_by_child = defaultdict(list)
    for foreign_key in foreign_keys:
        child = _table_key(foreign_key["table_name"])
        parent = _table_key(foreign_key["reference_table_name"])
        foreign_keys_by_child[child].append((foreign_key, parent))

    rows_by_key = {}
    for table, data in tables.items():
        for row_index, row in enumerate(data["rows"]):
            rows_by_key[(table, row_index)] = row

    seed_tables = list(tables)
    selected_keys = {table: set() for table in tables}
    impossible_keys = set()
    closure_cache = {}

    def dependency_closure(table: str, row_index: int, visiting: set):
        row_key = (table, row_index)
        if row_key in closure_cache:
            return closure_cache[row_key]
        if row_key in impossible_keys:
            return None
        if row_key in visiting:
            return set()

        row = rows_by_key[row_key]
        additions = {row_key}
        visiting.add(row_key)

        for foreign_key, parent in foreign_keys_by_child.get(table, []):
            if parent not in tables:
                visiting.remove(row_key)
                impossible_keys.add(row_key)
                return None

            child_indexes = columns_by_table[table]
            parent_indexes = columns_by_table[parent]
            child_values = tuple(
                _value_key(row["values"][child_indexes[column.lower()]])
                for column in foreign_key["column_names"]
            )
            if any(value is None for value in child_values):
                continue

            parent_candidates = [
                parent_index
                for parent_index, parent_row in enumerate(tables[parent]["rows"])
                if tuple(
                    _value_key(parent_row["values"][parent_indexes[column.lower()]])
                    for column in foreign_key["reference_column_names"]
                )
                == child_values
            ]
            random.shuffle(parent_candidates)
            if not parent_candidates:
                visiting.remove(row_key)
                impossible_keys.add(row_key)
                return None

            best_parent_closure = None
            for parent_index in parent_candidates:
                parent_closure = dependency_closure(parent, parent_index, visiting)
                if parent_closure is not None and (
                    best_parent_closure is None
                    or len(parent_closure) < len(best_parent_closure)
                ):
                    best_parent_closure = parent_closure
            if best_parent_closure is None:
                visiting.remove(row_key)
                impossible_keys.add(row_key)
                return None
            additions.update(best_parent_closure)

        visiting.remove(row_key)
        closure_cache[row_key] = additions
        return additions

    seed_indices = {}
    for table in seed_tables:
        seed_indices[table] = list(range(len(tables[table]["rows"])))
        random.shuffle(seed_indices[table])

    for table in tqdm(seed_tables):
        for row_index in tqdm(seed_indices[table]):
            dependency_closure(table, row_index, set())

    selected_count = 0
    while selected_count < max_inserts:
        selected_row_keys = {
            (selected_table, selected_index)
            for selected_table, indices in selected_keys.items()
            for selected_index in indices
        }
        added_row = False
        for table in seed_tables:
            candidates = []
            for row_index in seed_indices[table]:
                closure = closure_cache.get((table, row_index))
                if closure is None:
                    continue
                new_rows = closure - selected_row_keys
                if selected_count + len(new_rows) > max_inserts:
                    continue
                candidates.append((len(new_rows), random.random(), row_index, new_rows))

            if candidates:
                _, _, row_index, new_rows = min(candidates)
                seed_indices[table].remove(row_index)
                for selected_table, selected_index in new_rows:
                    selected_keys[selected_table].add(selected_index)
                    selected_row_keys.add((selected_table, selected_index))
                selected_count += len(new_rows)
                added_row = True

            if selected_count >= max_inserts:
                break

        if not added_row:
            break

    return {
        table: [rows_by_key[(table, row_index)] for row_index in selected_keys[table]]
        for table in tables
    }


if __name__ == "__main__":
    for path in os.listdir(folder):
        full_path = os.path.join(folder, path)
        if not os.path.isfile(full_path) or not full_path.endswith(".sql"):
            continue

        subfolder = full_path.split(".")[0]
        os.makedirs(subfolder, exist_ok=True)
        foreign_keys = []

        with open(full_path, encoding="utf-8") as inserts_file:
            inserts_file_content = inserts_file.read().replace("\n,", ",\n")
            tables = {}
            table_order = []
            table_key = ""

            for insert in inserts_file_content.split(";\n"):
                insert = insert.strip()

                if insert.startswith("CREATE TABLE"):
                    (
                        _table_old_name,
                        table_new_name,
                        table_keys,
                        attribute_data,
                        f_keys,
                    ) = get_data_from_create_table(insert)
                    foreign_keys.extend(f_keys)
                    table_key = _table_key(table_new_name)
                    tables[table_key] = {
                        "attributes": attribute_data,
                        "primary_keys": table_keys,
                        "attributes_sql": f"({', '.join([attribute[0] for attribute in attribute_data])}) ",
                        "create_statement": (
                            f"CREATE TABLE {table_new_name}\n("
                            + ",\n".join(
                                [" ".join(attribute) for attribute in attribute_data]
                            )
                            + ")"
                        ),
                        "rows": [],
                    }
                    table_order.append(table_key)

                if insert.startswith("INSERT"):
                    corrected_insert = (
                        f"INSERT INTO {table_key} {insert[insert.find('VALUES') :]}"
                    )
                    tables[table_key]["rows"].append(
                        {
                            "statement": corrected_insert,
                            "values": _insert_values(corrected_insert),
                        }
                    )

        selected = select_valid_inserts(tables, foreign_keys, max_inserts)
        dependencies = {
            table: {
                _table_key(foreign_key["reference_table_name"])
                for foreign_key in foreign_keys
                if _table_key(foreign_key["table_name"]) == table
            }
            for table in table_order
        }
        write_order = []
        remaining = set(table_order)
        while remaining:
            ready = [
                table
                for table in table_order
                if table in remaining and not dependencies[table] & remaining
            ]
            if not ready:
                ready = [table for table in table_order if table in remaining]
            write_order.extend(ready)
            remaining.difference_update(ready)

        with open(
            os.path.join(subfolder, "inserts_only.sql"), "w", encoding="utf-8"
        ) as inserts_only_file, open(
            os.path.join(subfolder, "gold_standard_input.sql"),
            "w",
            encoding="utf-8",
        ) as gold_standard_file:
            for table_key in write_order:
                table = tables[table_key]
                gold_standard_file.write(table["create_statement"] + ";\n")

            for table_key in write_order:
                table = tables[table_key]
                for row in selected[table_key]:
                    values_index = row["statement"].find("VALUES")
                    inserts_only_file.write(
                        row["statement"][:values_index]
                        + table["attributes_sql"]
                        + row["statement"][values_index:]
                        + ";\n"
                    )
                    gold_standard_file.write(row["statement"] + ";\n")

            print(
                f"Wrote {sum([len(inserts) for inserts in selected.values()])} for database {path}"
            )

        open(
            os.path.join(subfolder, "gold_standard_results.json"), "w", encoding="utf-8"
        ).close()
        with open(
            os.path.join(subfolder, "foreign_keys.json"), "w", encoding="utf-8"
        ) as foreign_keys_file:
            json.dump(foreign_keys, foreign_keys_file, indent=4)

        shutil.copy2(full_path, os.path.join(subfolder, path))
        # os.remove(full_path)
