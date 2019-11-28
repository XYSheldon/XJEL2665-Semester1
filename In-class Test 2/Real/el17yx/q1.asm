// q1.asm

// RAM[2] = Not( RAM[0] AND (RAM[1]+1) )

// Put your code below:

@R1
D=M+1
@R0
D=D&M
D=!D
@R2
M=D

(INF)
@INF
0;JMP