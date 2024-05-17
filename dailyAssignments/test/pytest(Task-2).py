# Task-2
# write a pytest test case to check if an exception is raised for a function that divides two numbers ?

import pytest

def divide(num1, num2):
    if num2 == 0:
        raise ValueError('cannot divide by zero')
    return num1 / num2


def test_divide():
    with pytest.raises(ValueError):
        divide(20, 0)
    with pytest.raises(ValueError):
        divide(70, 0)