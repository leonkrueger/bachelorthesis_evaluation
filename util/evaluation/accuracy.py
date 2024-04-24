from util.evaluation.evaluation import Evaluation


class AccuracyEvaluation(Evaluation):
    def get_filename(self) -> str:
        return "accuracy"

    def get_y_label(self) -> str:
        return "Accuracy"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> float:
        """Calculates the number of data points in the gold standard that ended up together in the resulting database.
        It does this for each table in the gold standard and returns the percentage of data points.
        Example:
        Gold standard:
        table1: [[1, A], [2, B]]
        table2: [[Apple], [Banana], [Peach]]
        Result:
        tableA: [[1, A], [NULL, Peach], [2, B], [NULL, Apple]]
        tableB: [[Banana]]
        Accuracy:
        (2 + 2) / (2 + 3) = 0.8"""
        correct_inserts = 0
        total_inserts = 0
        for query, gold_standard_table in gold_standard.items():
            total_inserts += len(gold_standard_table)
            correct_inserts += self._calculate_accuracy_for_one_table(
                gold_standard_table, results
            )

        return correct_inserts / float(total_inserts)

    def _calculate_accuracy_for_one_table(
        self, gold_standard_table: list[list[str]], result: dict[str, list[list[str]]]
    ) -> int:
        return max(
            [
                self._calculate_accuracy_for_pair_of_tables(
                    gold_standard_table, result_table
                )
                for result_table in result.values()
            ]
        )

    def _calculate_accuracy_for_pair_of_tables(
        self, gold_standard_table: list[list[str]], result_table: list[list[str]]
    ) -> int:
        return len(
            [
                gold_standard_row
                for gold_standard_row in gold_standard_table
                if self._is_row_in_table(gold_standard_row, result_table)
            ]
        )

    def _is_row_in_table(
        self, gold_standard_row: list[str], result_table: list[list[str]]
    ) -> bool:
        return any(
            # Is there a result_row that is a superset of the gold_standard_row?
            [
                all(
                    # Is every entry in this result_row?
                    [
                        gold_standard_entry in result_row
                        for gold_standard_entry in gold_standard_row
                    ]
                )
                for result_row in result_table
            ]
        )
