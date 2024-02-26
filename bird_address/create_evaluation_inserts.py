from random import Random
from insert_query_parser import parse_insert_query


table_name_deleted_ratio = 0.1
random = Random(14)

with open("bird_address\\inserts_only.sql") as queries_file, open(
    "evaluation_input_10.sql", "w"
) as output_file:
    queries = queries_file.readlines()
    random.shuffle(queries)
    for query in queries:
        query_data = parse_insert_query(query)
        query_data["values"] = query_data["values"][0]

        query_data["columns"] = [
            col
            for col, val in zip(query_data["columns"], query_data["values"])
            if val.lower() != "null"
        ]
        query_data["values"] = [
            val for val in query_data["values"] if val.lower() != "null"
        ]

        modified_query = f"INSERT INTO {'' if random.random() < table_name_deleted_ratio else query_data['table'] + ' '}({', '.join(query_data['columns'])}) VALUES ({', '.join(query_data['values'])});\n"

        output_file.write(modified_query)
