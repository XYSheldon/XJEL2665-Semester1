// q3.asm

// The code should raise an integer to an integer power.
// The base (b) is stored in RAM[0]
// The exponenent (e) is stored in RAM[1]
// The base raised to the power (b^e) should be stored in RAM[2]
// i.e. If R0 contains 2 and R1 contains 4, then R2 should contain 16  

// Put your code below:

    // get the base from R0 and store in variable
    @R0
    D=M
    @base
    M=D     
    
    // get the exponent from R1 and store in variable
    @R1
    D=M
    @exp
    M=D     
    
    // 0^0 = 1, therefore exponent has priority
    
    @pow
    M=1     // set pow to 1
    @exp
    D=M     // copy exp to D
    @END
    D;JEQ   // if equal 0 then result is 1, jump to end, no need to loop
    
    // now check for base = 0, 0^n=0
   
    @pow    // initialise power to 0
    M=0
    @base
    D=M     // copy base to D
    @END
    D;JEQ   // if equal 0 then results is 0, jump to end, no need to loop
    
    // now for when base and exponent != 0
    
/////////////////////////////////////////////////////////    
        
    @pow
    M=1  // initialise pow to 1
    
    (EXP_LOOP)
    
        @sum
        M=0    // sum = 0
        
        @base
        D=M
        @n
        M=D    // n=base
        
        // loop
        (SUM_LOOP)
            @pow
            D=M   // D = pow
            @sum
            M=D+M  // sum = sum + pow
            
            @n
            M=M-1   // n--
            D=M
            @SUM_LOOP
            D;JGT   // if n>0 then loop
        
        //
        
        @sum
        D=M
        @pow
        M=D   // pow = sum
        
        @exp   // exp--
        M=M-1
        D=M
        @EXP_LOOP
        D;JGT   // if exp>0 then loop
                        
//////////////////////////////////////////////////////////                 
(END)       // finished calculation
    
    @pow
    D=M
    @R2     // copy pow to correct register (R2)
    M=D
    
(INF)         // infinite loop at the end
    @INF
    0;JMP