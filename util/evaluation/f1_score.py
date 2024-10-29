from math import isnan
from typing import Any, Callable

from numpy import average

from util.evaluation.evaluation import Evaluation


class F1Score(Evaluation):
    def __init__(
        self,
        table_aggregation_function=average,
        split_by_datatype: str = None,
    ):
        self.table_aggregation_function = table_aggregation_function
        self.split_by_datatype = split_by_datatype

    def get_filename(self) -> str:
        if not self.split_by_datatype:
            return "f1_score"
        else:
            return f"f1_score_only_{self.split_by_datatype}_number"

    def get_y_label(self) -> str:
        return "F1 Score"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> Any:
        """Calculates the average over F1-Scores for all gold standard tables"""
        if not self.split_by_datatype:
            table_scores = [
                self._calculate_gs_table_f1_score(gs_table, results)
                for gs_table in gold_standard.values()
            ]

            # We ignore tables with no relevant data
            # This only happens when we evaluate the score for specific data types and no such value is in a table
            return average([score for score in table_scores if not isnan(score)])
        else:
            collector = {"0.1": [], "0.3": [], "0.7": [], "0.9": [], "1.0": []}
            for gs_table in gold_standard.values():
                table_score = self._calculate_gs_table_f1_score(gs_table, results)

                ratio = (
                    self._ratio_of_datatype(gs_table[0]) if len(gs_table) > 0 else 1.0
                )
                if ratio <= 0.1:
                    collector["0.1"].append(table_score)
                elif ratio <= 0.3:
                    collector["0.3"].append(table_score)
                elif ratio < 0.7:
                    collector["0.7"].append(table_score)
                elif ratio < 0.9:
                    collector["0.9"].append(table_score)
                else:
                    collector["1.0"].append(table_score)

            return {
                ratio: average([score for score in scores if not isnan(score)])
                for ratio, scores in collector.items()
            }

    def _consider_value(self, value: str) -> bool:
        return value is not None and value != "None" and value != "nan"

    def _ratio_of_datatype(self, row: list[str]) -> float:
        if self.split_by_datatype == "string":
            number_of_datatype = len([value for value in row if isinstance(value, str)])
        elif self.split_by_datatype == "number":
            number_of_datatype = len(
                [
                    value
                    for value in row
                    if isinstance(value, int) or isinstance(value, float)
                ]
            )
        else:
            number_of_datatype = len(row)

        return number_of_datatype / len(row)

    def _calculate_gs_table_f1_score(
        self, gs_table: list[list[str]], results: dict[str, list[list[str]]]
    ) -> float:
        """Calculates the aggregated result over F1-Scores for all columns of a gold standard table.
        Aggregation function can be set in the constructor and is min by default."""
        return self.table_aggregation_function(
            [
                self._calculate_gs_column_f1_score(gs_column_index, gs_table, results)
                for gs_column_index in range(
                    len(gs_table[0]) if len(gs_table) > 0 else 0
                )
                if any(
                    [
                        self._consider_value(gs_row[gs_column_index])
                        for gs_row in gs_table
                    ]
                )
            ]
        )

    def _calculate_gs_column_f1_score(
        self,
        gs_column_index: int,
        gs_table: list[list[str]],
        results: dict[str, list[list[str]]],
    ) -> float:
        """Calculates the maximum of F1-Scores for the combinations of this gold standard column
        with all columns in the result database"""
        return max(
            [
                self._calculate_gs_r_column_f1_score(
                    gs_column_index, gs_table, r_column_index, r_table
                )
                for r_table in results.values()
                for r_column_index in range(len(r_table[0]) if len(r_table) > 0 else 0)
                if any(
                    [self._consider_value(r_row[r_column_index]) for r_row in r_table]
                )
            ]
        )

    def _calculate_gs_r_column_f1_score(
        self,
        gs_column_index: int,
        gs_table: list[list[str]],
        r_column_index: int,
        r_table: list[list[str]],
    ) -> float:
        """Calculates the F1-Score for a specific combination of gold average and result column"""
        tp, fn = 0, 0
        for gs_row in gs_table:
            if not self._consider_value(gs_row[gs_column_index]):
                continue

            if self._is_gs_value_in_r_column(
                gs_column_index, gs_row, r_column_index, r_table
            ):
                tp += 1
            else:
                fn += 1
        fp = (
            len(
                [
                    r_row
                    for r_row in r_table
                    if self._consider_value(r_row[r_column_index])
                ]
            )
            - tp
        )

        precision = tp / (tp + fp)
        recall = tp / (tp + fn)
        if precision == 0 and recall == 0:
            return 0
        return 2 * precision * recall / (precision + recall)

    def _is_gs_value_in_r_column(
        self,
        gs_column_index: int,
        gs_row: list[str],
        r_column_index: int,
        r_table: list[list[str]],
    ) -> bool:
        """Checks whether a value of the gold standard database is in a specific column of a result table"""
        return any(
            [
                # Is the value in the specified columns equal?
                gs_row[gs_column_index] == r_row[r_column_index]
                # Is this the correct row to search for the value?
                and all(
                    [
                        not self._consider_value(gs_value) or gs_value in r_row
                        for gs_value in gs_row
                    ]
                )
                for r_row in r_table
            ]
        )
