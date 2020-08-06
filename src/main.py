import time

EXECUTION_TIME = 0.5  # Fake long computation.


def f(x: int) -> float:
    print(f"Computing h({x})...")
    time.sleep(EXECUTION_TIME * 2)

    print(f"Finished h(.)")
    return x - 1


def g(x: int) -> int:
    print(f"Computing g({x})...")
    time.sleep(EXECUTION_TIME)

    print(f"Finished g(.)")
    return x * 2


def h(x: int) -> int:
    print(f"Computing f({x})...")
    time.sleep(EXECUTION_TIME)

    print(f"Finished f(.)")
    return x + 1


##


def badness():
    # Just fail.
    raise ValueError


def hello(name):
    return f"Hello, {name}!"
