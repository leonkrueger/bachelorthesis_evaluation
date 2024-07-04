import math

from util.evaluation.evaluation import Evaluation


class SplitProportionScore(Evaluation):
    def get_filename(self) -> str:
        return "split_proportion_score"

    def get_y_label(self) -> str:
        return "Split Score"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> float:
        return (1 / len(gold_standard)) * sum(
            [
                self._calculate_for_one_table(gold_standard_table, results)
                for gold_standard_table in gold_standard.values()
            ]
        )

    def _calculate_for_one_table(
        self, gold_standard_table: list[list[str]], results: dict[str, list[list[str]]]
    ) -> float:
        if len(results) == 1:
            return 1

        return 1 - (
            -sum(
                [
                    self._entropy(gold_standard_table, result_table)
                    for result_table in results.values()
                ]
            )
        ) / math.log2(len(results))

    def _entropy(
        self, gold_standard_table: list[list[str]], result_table: list[list[str]]
    ) -> float:
        number_of_rows_in_result_table = len(
            [
                gold_standard_row
                for gold_standard_row in gold_standard_table
                # Is this gold_standard_row in the result_table?
                if any(
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
            ]
        )
        if number_of_rows_in_result_table == 0:
            return 0

        proportion = number_of_rows_in_result_table / len(gold_standard_table)
        return proportion * math.log2(proportion)
