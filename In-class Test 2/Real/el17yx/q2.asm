// q2.asm

// Integer Division

// Input values (positive integers only):
// R0 = x  (dividend)
// R1 = y  (divisor)

// Output values:
// R2 = x/y  (quotient)
// R3 = x%y  (remainder) 

// e.g

// If: 
// R0 = 19
// R1 = 3
// Then:
// R2 = 19/3 = 6
// R3 = 1
// i.e. 19/3 = 6 remainder 1
// (6 x 3) + 1 = 19

// Put your code below:

@R0
D=M
@remainder
M=D
@quotient
M=0
(LOOP)
   @remainder
   D=M
   @R1
   D=D-M
   @STOP
   D;JLT

   @quotient
   M=M+1
   @R1
   D=M
   @remainder
   M=M-D

   @LOOP
   0;JMP
(STOP)

@quotient
D=M
@R2
M=D

@remainder
D=M
@R3
M=D

(INF)
@INF
0;JMP