import math

from util.evaluation.evaluation import Evaluation


class GroupProportionScore(Evaluation):
    def get_filename(self) -> str:
        return "group_proportion_score"

    def get_y_label(self) -> str:
        return "Group Score"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> float:
        return (1 / len(results)) * sum(
            [
                self._calculate_for_one_table(result_table, gold_standard)
                for result_table in results.values()
            ]
        )

    def _calculate_for_one_table(
        self, result_table: list[list[str]], gold_standard: dict[str, list[list[str]]]
    ) -> float:
        if len(gold_standard) == 1:
            return 1

        return 1 - (
            -sum(
                [
                    self._entropy(gold_standard_table, result_table)
                    for gold_standard_table in gold_standard.values()
                ]
            )
        ) / math.log2(len(gold_standard))

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

        proportion = number_of_rows_in_result_table / len(result_table)
        return proportion * math.log2(proportion)
