// q1.asm

// Adds the value stored in RAM[0] to RAM[1] and stores the result in RAM[2]
// i.e RAM[2] = RAM[0] + RAM[1]

// Put your code below:
@R0
D=M
@R1
D=M+D
@R2
M=D