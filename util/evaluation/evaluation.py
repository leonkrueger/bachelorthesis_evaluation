from typing import Any


class Evaluation:
    def get_filename(self) -> str:
        return "evaluation"

    def get_y_label(self) -> str:
        return "Evaluation"

    def calculate(
        self,
        results: dict[str, list[list[str]]],
        gold_standard: dict[str, list[list[str]]],
    ) -> Any:
        return 0
