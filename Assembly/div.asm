
// Input: RAM[0] = Dividend, RAM[1] = Divisor.

// Output: RAM[2] = Quotient, RAM[3] = Remainder.

Logic:
while Divident > Divisor, Dividend - divisor; Quotient +1; 
In the end; Dividend = Remainder


@R2
M=0

(LOOP)
@R0
D=M
@R1
D=D-M
@END
D;JLT
@R0
M=D
@R2
M=M+1
@LOOP
0;JMP

(END)
@R0
D=M
@R3
M=D
@END
0;JMP


