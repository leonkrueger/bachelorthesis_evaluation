from util.evaluation.evaluation import Evaluation


class NumberOfTablesEvaluation(Evaluation):
    def get_filename(self) -> str:
        return "number_of_tables"

    def get_y_label(self) -> str:
        return "Number of tables"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> int:
        return len(results.keys())
