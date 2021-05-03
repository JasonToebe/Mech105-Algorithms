# Binary Converter
This fonction is used to convert a base 10 number into a binary number
## Inputs/Outputs
### Inputs:
- base10 = A number in base10
### Outputs:
- base2 - The base10 number converted to binary
## How it works
The function creates a zeros matrix as a substitute for a binary number and goes value by value determining if the current base 10 number can fit into the base 2 number it would be. If so, that number is subtracted off the base 10 and the function moves to the next value. If not, the value is skipped.
