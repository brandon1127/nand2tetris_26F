// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@R2
M = 0

(LOOP)
@R0 // Load R0 Address
D = M // Load R0 Data
@END // Load Address for Jump
D; JEQ // Jump if R1=0

@R1 
D = M // Load R1 Data
@R2 
M = D + M // Add R1 to R2

@R0
M = M - 1 // Decrement R0

@LOOP
0;JMP //Repeat Loop until R1=0

(END)
@END
0; JMP // I can't believe this works!!!!!!!!



