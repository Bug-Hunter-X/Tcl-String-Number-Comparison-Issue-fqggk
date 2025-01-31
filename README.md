# Tcl String/Number Comparison Issue

This repository demonstrates a subtle bug in Tcl related to comparing strings and numbers. The `myproc` procedure is intended to return the larger of two values, but it exhibits unexpected behavior when one or both inputs are strings.

## Bug Description

The `if` statement in Tcl performs string comparison when both operands are strings and numerical comparison when both operands are numbers. If one operand is a string and the other is a number, Tcl attempts to convert the string operand to a number which might lead to errors or unexpected results. In this case when passing "a" and 5, the comparison fails to work as expected.