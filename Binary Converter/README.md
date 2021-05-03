# Binary Converter
This fonction is used to convert a base 10 number into a binary number
## Inputs/Outputs
The function takes an input of a base 10 number and puts out a base 2 number.
## How it works
The function creates a zeros matrix as a substitute for a binary number and goes value by value determining if the current base 10 number can fit into the base 2 number it would be. If so, that number is subtracted off the base 10 and the function moves to the next value. If not, the value is skipped.
