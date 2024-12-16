from typing import TypeVar, Generic, Union, Optional, Protocol, Tuple, List, Any, Self
from types import TracebackType
from enum import Flag, Enum, auto
from dataclasses import dataclass
from abc import abstractmethod
import weakref

from ..types import Result, Ok, Err, Some
from ..exports import generator

class Generator(Protocol):

    @abstractmethod
    def suggest(self, name: str, age: int, likes: str) -> generator.Suggestions:
        """
        Raises: `gift_suggestions_generator.types.Err(gift_suggestions_generator.imports.str)`
        """
        raise NotImplementedError


