// q2.asm

// RAM[2] = RAM[0] multiply RAM[1]

// Put your code below:

	@R0
	D=M
	@x
	M=D	// x = R0

	@R1
	D=M
	@y
	M=D	// y = R1

	@0
	D=A
	@R2
	M=D	// R2 = 0

(WHILE)
	// begin of loop condition
	@x
	D=M	// load R0 for loop condition
	@END
	D;JLE	// if x <= 0 goto END      
	// end of loop condition

	// begin body of while
	@y
	D=M	// D = y
	@R2
	M=D+M	// sum = sum + y
	@1
	D=A	// D = 1
	@x
	M=M-D	// x = x - 1	
	// end body of while

	@WHILE
	0;JMP	// jump to loop start
(END)	
	@END
	0;JMP	// Infinite loop (program end)