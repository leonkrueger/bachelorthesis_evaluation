import tokenize
import io


class UnexpectedTokenException(Exception):
    def __init__(self, expected_token: str, actual_token: str) -> None:
        self.expected_token = expected_token
        self.actual_token = actual_token


def parse_insert_query(query: str) -> dict[str, str | list[str] | list[list[str]]]:
    # Parses INSERT-queries and extracts the table, columns, values and column types if present
    # Parameter query needs to be lowercase
    # TODO: '$' in table/column name doesn't work
    # INSERT INTO Cities (Name, Country) VALUES ("Paris", "France");
    # INSERT INTO Cities VALUES ("Paris", "France"), ("Berlin", "Germany");
    # INSERT INTO (Name, Country) VALUES ("Paris", "France");
    # INSERT INTO VALUES ("Paris", "France");
    query_data = {}

    tokens = [
        token.string for token in tokenize.generate_tokens(io.StringIO(query).readline)
    ]
    if tokens[0].upper() != "INSERT":
        raise UnexpectedTokenException("INSERT", tokens[0])
    if tokens[1].upper() != "INTO":
        raise UnexpectedTokenException("INTO", tokens[1])

    index = 2
    if tokens[index].upper() != "VALUES" and tokens[index] != "(":
        query_data["table"], index = parse_table(tokens, index)
    if tokens[index] == "(":
        query_data["columns"], index = parse_columns(tokens, index)
    if tokens[index].upper() != "VALUES":
        raise UnexpectedTokenException("VALUES", tokens[index])
    query_data["values"], query_data["column_types"], index = parse_values(
        tokens, index + 1
    )

    if index < len(tokens) and tokens[index] != ";" and "".join(tokens[index:]) != "":
        raise UnexpectedTokenException(";", tokens[index])

    # All tokens after the ';' are ignored

    return query_data


def parse_table(tokens: list[str], index: int) -> tuple[str, int]:
    return (tokens[index], index + 1)


def parse_columns(tokens: list[str], index: int) -> tuple[list[str], int]:
    if tokens[index] != "(":
        raise UnexpectedTokenException("(", tokens[index])

    columns = []
    columns.append(tokens[index + 1])
    index += 2

    while tokens[index] == ",":
        columns.append(tokens[index + 1])
        index += 2

    if tokens[index] != ")":
        raise UnexpectedTokenException(")", tokens[index])

    return (columns, index + 1)


def parse_values(
    tokens: list[str], index: int
) -> tuple[list[list[str]], list[str], int]:
    values = []
    row_values, column_types, index = parse_values_for_row(tokens, index)
    values.append(row_values)

    while tokens[index] == ",":
        row_values, index = parse_values_for_row(tokens, index + 1)
        values.append(row_values)

    return (values, column_types, index)


def parse_values_for_row(
    tokens: list[str], index: int
) -> tuple[list[str], list[str], int]:
    if tokens[index] != "(":
        raise UnexpectedTokenException("(", tokens[index])

    values, column_types = [], []

    value, column_type, index = parse_single_value(tokens, index + 1)
    values.append(value)
    column_types.append(column_type)

    while tokens[index] == ",":
        value, column_type, index = parse_single_value(tokens, index + 1)
        values.append(value)
        column_types.append(column_type)

    if tokens[index] != ")":
        raise UnexpectedTokenException(")", tokens[index])

    return (values, column_types, index + 1)


def parse_single_value(tokens: list[str], index: int) -> tuple[str, str, int]:
    if tokens[index] == "-":
        return ("-" + tokens[index + 1], get_column_type(tokens[index + 1]), index + 2)
    else:
        return (tokens[index], get_column_type(tokens[index]), index + 1)


def get_column_type(value: str) -> str:
    # Computes the required column type for the given value
    if value.startswith('"') or value.startswith("'"):
        return "VARCHAR(255)"
    elif "." in value:
        return "DOUBLE"
    else:
        return "BIGINT"
