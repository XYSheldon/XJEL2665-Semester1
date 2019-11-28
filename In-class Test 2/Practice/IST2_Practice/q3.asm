// q3.asm

// The code should raise an integer to an integer power.
// The base (b) is stored in RAM[0]
// The exponenent (e) is stored in RAM[1]
// The base raised to the power (b^e) should be stored in RAM[2]
// i.e. If R0 contains 2 and R1 contains 4, then R2 should contain 16  

// Put your code below:
@j
M=0
@R0
D=M
@left
M=1
@right 
M=D
(OLOOP)
    @j
    D=M
    @R1
    D=M-D
    @OSTOP
    D;JLE

        @right
        D=M
        @i
        M=D
        @sum
        M=0
        (LOOP)
            @i
            D=M
            @STOP
            D;JLE

            @left
            D=M
            @sum
            M=M+D

            @i
            M=M-1

            @LOOP
            0;JMP
        (STOP)
        @sum
        D=M
        @left
        M=D
    
    @j
    M=M+1

    @OLOOP
    0;JMP
(OSTOP)
@left
D=M
@R2
M=D

(INF)
@INF
0;JMP