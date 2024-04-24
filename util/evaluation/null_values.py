from util.evaluation.evaluation import Evaluation


class NullValuesEvaluation(Evaluation):
    def get_filename(self) -> str:
        return "null_values"

    def get_y_label(self) -> str:
        return "Number of NULL-values"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> int:
        return len(
            [
                value
                for query, table in results.items()
                for row in table
                for value in row
                if value is None or value == "None"
            ]
        )
