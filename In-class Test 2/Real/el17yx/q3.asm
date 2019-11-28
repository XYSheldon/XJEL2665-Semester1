// q3.asm

// Left bit-shift operator (<< in C++)

// R0 contains a unsigned integer value
// R1 contains the number of places to bit-shift left
// R2 stores the result

// e.g.

// R0 contains 4 (100 in binary)
// R1 contains 3
// R2 would contain (4 << 3) i.e. 100000 - this is 32 in decimal

// Put your code below:

@R1
D=M
@i
M=D

(LOOP)
    @i
    M=M-1
    D=M
    @STOP
    D;JLT

    @R0
    D=M
    M=M+D

    @LOOP
    0;JMP
(STOP)

@R0
D=M
@R2
M=D

(INF)
@INF
0;JMP