from random import Random

reduction_ratio = 0.99
random = Random(42)

with open("bird_address\\address.sql", encoding="utf-16-le") as queries_file, open(
    "inserts_only.sql", "w"
) as inserts_only_file, open("gold_standard_input.sql", "w") as gold_standard_file:
    attributes = "()"
    for query in queries_file.read().split(";"):
        query = query.strip()

        if query.startswith("CREATE"):
            attribute_start_index = query.find("(")
            attributes = f"({', '.join([attribute.split()[0] for attribute in query[attribute_start_index + 1 :].split(',')])}) "
            gold_standard_file.write(query + ";\n")
            continue

        if query.startswith("INSERT"):
            if random.random() > reduction_ratio:
                index = query.find("VALUES")
                query_with_attributes = (
                    query[:index] + attributes + query[index:] + ";\n"
                )
                inserts_only_file.write(query_with_attributes)
                gold_standard_file.write(query + ";\n")
