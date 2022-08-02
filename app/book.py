from dataclasses import dataclass
from typing import Optional


@dataclass
class Book:
    title: Optional[str] = None
    auth: Optional[str] = None
