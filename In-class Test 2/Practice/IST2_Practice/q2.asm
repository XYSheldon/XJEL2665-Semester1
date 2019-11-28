// q2.asm

// RAM[2] = RAM[0] multiply RAM[1]

// Put your code below:

@i
M=0
@sum
M=0
(LOOP)

    @i
    D=M
    @R1
    D=M-D
    @STOP
    D;JLE

    @R0
    D=M
    @sum
    M=M+D

    @i
    M=M+1

    @LOOP
    0;JMP
    
(STOP)
@sum
D=M
@R2
M=D