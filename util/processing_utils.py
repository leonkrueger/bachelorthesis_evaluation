import io
import tokenize
from typing import Any


def insert_to_string(
    insert: dict[str, str | list[str] | list[list[str]]],
    use_mysql_quotes: bool = False,
) -> str:
    quote_str = "`" if use_mysql_quotes else ""
    table_str = (
        ""
        if "table" not in insert.keys()
        else quote_str + insert["table"] + quote_str + " "
    )
    columns_str = (
        ""
        if "columns" not in insert.keys()
        else "("
        + ", ".join([quote_str + column + quote_str for column in insert["columns"]])
        + ") "
    )
    return (
        f"INSERT INTO {table_str}{columns_str}VALUES ({', '.join(insert['values'])});\n"
    )


def is_usable_value(value: str | Any) -> bool:
    return value is not None and value.lower() != "'nan'" and value.lower() != "null"


def remove_quotes(attribute: str, use_mysql_quotes: bool = True) -> str:
    """Replace the quotes used in SQLITE with the ones used in MYSQL"""
    if attribute[0] == "'" or attribute[0] == '"' or attribute[0] == "`":
        if use_mysql_quotes:
            return f"`{attribute[1:-1].replace(' ', '_')}`"
        else:
            return f"{attribute[1:-1].replace(' ', '_').replace('-', '_')}"
    else:
        if use_mysql_quotes:
            return f"`{attribute}`"
        else:
            return attribute


def map_type(type: str) -> str:
    type_mapping = {
        "VARCHAR": "VARCHAR(1023)",
        "VARCHAR2": "VARHCAR(255)",
        "TEXT": "VARCHAR(1023)",
        "CHAR": "VARCHAR(1023)",
        "DOUBLE": "DOUBLE",
        "REAL": "DOUBLE",
        "FLOAT": "DOUBLE",
        "DECIMAL": "DOUBLE",
        "NUMERIC": "DOUBLE",
        "NUMBER": "DOUBLE",
        "INTEGER": "BIGINT",
        "INT": "BIGINT",
        "BIGINT": "BIGINT",
        "MEDIUMINT": "BIGINT",
        "SMALLINT": "BIGINT",
        "TINYINT": "BIGINT",
        "BIT": "BIGINT",
        "BOOLEAN": "BIGINT",
        "BOOL": "BIGINT",
        "YEAR": "BIGINT",
        "DATE": "DATE",
        "DATETIME": "DATETIME",
        "TIMESTAMP": "DATETIME",
        "BLOB": "BLOB",
        "DEFAULT": "VARCHAR(1023)",
    }
    if type.upper() not in type_mapping.keys():
        print(f"ERROR: NO TYPE MAPPING FOR TYPE {type}")
        return type
    return type_mapping[type.upper()]


def get_data_from_create_table(
    statement: str, use_mysql_quotes: bool = True
) -> tuple[str, str, list[str], list[list[str]]]:
    """Get all information needed to create the SQL statements that can be run on a MYSQL database"""
    # Get the column information needed
    attribute_start_index = statement.find("(")
    attribute_data = [
        [
            token.string
            for token in tokenize.generate_tokens(io.StringIO(attribute).readline)
            if token.string.strip() != ""
        ]
        for attribute in statement[
            attribute_start_index + 1 : len(statement) - 1
        ].split(",\n")
    ]

    # Get table name
    table_name_data = [
        token.string
        for token in tokenize.generate_tokens(
            io.StringIO(statement[:attribute_start_index]).readline
        )
        if token.string.strip() != ""
    ]
    table_name_offset = 1 if any([token == "`" for token in table_name_data]) else 0
    table_name = (
        table_name_data[2 + table_name_offset]
        if "if" != table_name_data[2].lower()
        else table_name_data[5 + table_name_offset]
    )
    table_old_name = table_name
    table_new_name = remove_quotes(table_name, use_mysql_quotes)

    # Save primary keys of the table
    if len(attribute_data[0]) > 2 and attribute_data[0][2] == "primary":
        primary_keys = [attribute_data[0][0]]
    else:
        primary_key_data = [
            attribute for attribute in attribute_data if attribute[0] == "primary"
        ]
        if len(primary_key_data) > 0:  # WikiDB has no defined primary keys
            number_of_keys = (
                len(primary_key_data[0]) - 2  # For tokens "primary" and "key"
            )
            primary_keys = [
                attribute[0]
                for index, attribute in enumerate(attribute_data)
                if index < number_of_keys
            ]
        else:
            primary_keys = []

    # Get the right data types and create the correct "CREATE TABLE" statement
    attributes = []
    for attribute in attribute_data:
        if (
            attribute[1].lower() == "key"
            or attribute[0].lower() == "constraint"
            or attribute[0].lower() == "unique"
            or (attribute[0] == "-" and attribute[1] == "-")
        ):
            continue

        if attribute[0] == "`":
            attribute_name = attribute[1]
            i = 2
            while attribute[i] != "`":
                attribute_name += "_" + attribute[i]
                i += 1
            attributes.append(
                [
                    remove_quotes(attribute_name, use_mysql_quotes),
                    map_type(attribute[i + 1]),
                ]
            )
        else:
            attributes.append(
                [remove_quotes(attribute[0], use_mysql_quotes), map_type(attribute[1])]
            )

    return (table_old_name, table_new_name, primary_keys, attributes)
