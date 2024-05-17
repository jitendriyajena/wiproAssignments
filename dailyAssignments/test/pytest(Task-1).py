
import pytest

from src.add import add

def test_add():
    assert add(10, 20) == 30
    assert add(50, 45) == 95

