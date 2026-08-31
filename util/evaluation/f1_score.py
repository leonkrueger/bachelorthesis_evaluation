from enum import Enum
from math import isnan
from typing import Any, Callable
from collections import defaultdict

from numpy import average

from util.evaluation.evaluation import Evaluation


class EvaluationType(Enum):
    F1_SCORE = ("f1_score", "F1 Score")
    PRECISION = ("precision", "Precision")
    RECALL = ("recall", "Recall")

class F1Score(Evaluation):
    def __init__(self, strict_score: bool = False, include_null_values: bool = False, evaluation_type: EvaluationType = EvaluationType.F1_SCORE):
        self.strict_score = strict_score
        self.include_null_values = include_null_values
        self.evaluation_type = evaluation_type

    def get_filename(self) -> str:
        null_string = "_null" if self.include_null_values else ""
        strict_string = "_strict" if self.strict_score else ""
        return self.evaluation_type.value[0] + null_string + strict_string

    def get_y_label(self) -> str:
        return self.evaluation_type.value[1]

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> Any:
        """Calculates the average over scores for all gold standard tables"""
        results = {table_name: [[self._normalize(value) for value in row] for row in table] for table_name, table in results.items()}
        results = {table_name: (table, [self._row_key(row) for row in table]) for table_name, table in results.items()}
        gold_standard = {table_name: [[self._normalize(value) for value in row] for row in table] for table_name, table in gold_standard.items()}

        table_scores = [
            self._calculate_gs_table_score(gs_table, results)
            for gs_table in gold_standard.values()
        ]

        # We ignore tables with no relevant data
        return average([score for score in table_scores if not isnan(score)])

    def _normalize(self, value):
        """Reduces a value to its base SQLite affinity equivalent (Integer if possible, else Float, else String)."""
        if isinstance(value, str):
            val_str = value.strip()
                
            # 1. Try exact integer first. 
            # (We do this before float to prevent precision loss on massive numbers)
            try:
                return int(val_str)
            except ValueError:
                pass
                
            # 2. Try float. (This catches decimals and cases like '5.0')
            try:
                val_float = float(val_str)
                # If the float has no fractional part (e.g., 5.0), reduce it down to an int (5)
                if val_float.is_integer():
                    return int(val_float)
                return val_float
            except ValueError:
                # 3. Not a number. Return the stripped string.
                return val_str

        elif isinstance(value, float):
            # If the database gave us a float like 5.0, reduce it to int 5
            if value.is_integer():
                return int(value)
            return value
            
        # Integers, None (NULL), and booleans remain exactly as they are
        return value

    def _consider_value(self, value: str) -> bool:
        return value is not None and not (isinstance(value, (int, float)) and isnan(value)) and value != "None" and value != "nan"

    def _calculate_gs_table_score(
        self,
        gs_table: list[list[str]],
        results: dict[str, tuple[list[list[str]], list[tuple]]],
    ) -> float:
        """Calculates the aggregated result over scores for all columns of a gold standard table"""
        if self.strict_score:
            table_averages = [
                average(
                    [
                        self._calculate_strict_gs_column_r_table_score(
                            gs_column_index, gs_table, r_table, r_keys
                        )
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
                for r_table, r_keys in results.values()
            ]
            return max(table_averages) if len(table_averages) > 0 else 0.0
        else:
            return average(
                [
                    self._calculate_gs_column_score(
                        gs_column_index, gs_table, results
                    )
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

    def _calculate_gs_column_score(
        self,
        gs_column_index: int,
        gs_table: list[list[str]],
        results: dict[str, tuple[list[list[str]], list[tuple]]],
    ) -> float:
        """Calculates the maximum of scores for the combinations of this gold standard column
        with all columns in the result database"""
        scores = [
            self._calculate_gs_r_column_score(
                gs_column_index, gs_table, r_column_index, r_table, r_keys
            )
            for r_table, r_keys in results.values()
            for r_column_index in range(len(r_table[0]) if len(r_table) > 0 else 0)
            if any([self._consider_value(r_row[r_column_index]) for r_row in r_table])
        ]
        return max(scores) if len(scores) > 0 else 0.0

    def _calculate_strict_gs_column_r_table_score(
        self,
        gs_column_index: int,
        gs_table: list[list[str]],
        r_table: list[list[str]],
        r_keys: list[tuple],
    ) -> float:
        """Calculates the maximum score for the combination of a gold average column and result table"""
        f1_scores = [
            self._calculate_gs_r_column_score(
                gs_column_index, gs_table, r_column_index, r_table, r_keys
            )
            for r_column_index in range(len(r_table[0]) if len(r_table) > 0 else 0)
            if any([self._consider_value(r_row[r_column_index]) for r_row in r_table])
        ]
        return max(f1_scores) if len(f1_scores) > 0 else 0.0

    def _calculate_gs_r_column_score(
        self,
        gs_column_index: int,
        gs_table: list[list[str]],
        r_column_index: int,
        r_table: list[list[str]],
        r_keys: list[tuple],
    ) -> float:
        """Calculates the score for a specific combination of gold average and result column"""
        gs_keys = [self._row_key(gs_row) for gs_row in gs_table]

        r_rows_by_key: dict[tuple, list[list[str]]] = defaultdict(list)
        for r_row, r_key in zip(r_table, r_keys):
            r_rows_by_key[r_key].append(r_row)

        tp, fn = 0, 0
        for gs_row, gs_key in zip(gs_table, gs_keys):
            if not self._consider_value(gs_row[gs_column_index]):
                continue

            candidates = r_rows_by_key.get(gs_key, ())
            if any(gs_row[gs_column_index] == r_row[r_column_index] for r_row in candidates):
                tp += 1
            else:
                fn += 1

        recall = tp / (tp + fn)
        if self.evaluation_type == EvaluationType.RECALL:
            return recall

        fp = 0
        if self.include_null_values:
            null_gs_keys = {
                gs_key
                for gs_row, gs_key in zip(gs_table, gs_keys)
                if any(not self._consider_value(v) for v in gs_row)
            }
            for r_row, r_key in zip(r_table, r_keys):
                if self._consider_value(r_row[r_column_index]) or r_key not in null_gs_keys:
                    fp += 1
        else:
            fp = sum(1 for r_row in r_table if self._consider_value(r_row[r_column_index]))
        fp -= tp

        precision = tp / (tp + fp)
        if self.evaluation_type == EvaluationType.PRECISION:
            return precision
        
        if precision == 0 and recall == 0:
            return 0
        return 2 * precision * recall / (precision + recall)

    def _row_key(self, row: list[str]) -> tuple:
        """A hashable, order-independent representation of the values in a row"""
        return tuple(sorted(str(value) for value in row if self._consider_value(value)))
        