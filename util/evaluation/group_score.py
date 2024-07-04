from util.evaluation.evaluation import Evaluation


class GroupScore(Evaluation):
    def get_filename(self) -> str:
        return "group_score"

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
    ) -> int:
        return 1 / len(
            [
                gold_standard_table
                for gold_standard_table in gold_standard.values()
                if self._does_result_table_contain_data_of_gold_standard_table(
                    gold_standard_table, result_table
                )
            ]
        )

    def _does_result_table_contain_data_of_gold_standard_table(
        self, gold_standard_table: list[list[str]], result_table: list[list[str]]
    ) -> bool:
        return any(
            [
                # Is there a gold_standard_row that is in the result_table?
                any(
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
                for gold_standard_row in gold_standard_table
            ]
        )
