// 1. The "Memory Block Move" (Data Management)The Task: Write a program that copies a block of memory from one location to another.Input: Set RAM[0] as the source address, RAM[1] as the destination address, and RAM[2] as the length ($n$).Goal: Copy $n$ consecutive values starting from RAM[RAM[0]] into RAM[RAM[1]].Why: This teaches you how to handle double indirection (using a pointer to get an address, then using that address to get a value), which is fundamental for how high-level arrays and objects work.

@i
M=0
(LOOP)
@i
D=M
@R0
D=D+M
A=D
D=M
@temp
M=D
@i
D=M
@R1
D=D+M
@temp2
M=D
@temp
D=M
@temp2    // Get the address we want to move it TO
A=M       // Set the A register to that calculated address
M=D
@i
D=M
@R2
D=D-M
@i
M=M+1
@LOOP
D;JLT
(END)
@END
0;JMP
