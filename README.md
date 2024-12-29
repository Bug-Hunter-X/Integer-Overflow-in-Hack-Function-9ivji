# Integer Overflow in Hack

This repository demonstrates a potential integer overflow bug in Hack code.  The `baz` function, through a chain of function calls, can potentially lead to an integer overflow if the input value is sufficiently large.  The solution provides a method to mitigate this risk by using a larger integer type or adding checks to prevent overflow.

The bug is shown in `bug.hack` and the solution in `bugSolution.hack`.