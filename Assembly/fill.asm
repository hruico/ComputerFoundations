// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

// 1. OUTER LOOP: Keep checking the keyboard forever
(MAIN_LOOP)

    // Check Keyboard (Address 24576)
    // If KBD == 0, go to set color to WHITE
    // Else, go to set color to BLACK
    @KBD
    D=M
    @SET_WHITE
    D;JEQ
    @SET_BLACK
    0;JMP

(SET_WHITE)
    // Put 0 into a variable called 'color'
    // Jump to the FILL_SCREEN logic
    @0
    D=A
    @color
    M=D
    @FILL_SCREEN
    0;JMP
    
(SET_BLACK)
    // Put -1 into a variable called 'color'
    // Jump to the FILL_SCREEN logic
    @color
    M=-1
    @FILL_SCREEN
    0;JMP

(FILL_SCREEN)
    // a. Create a pointer 'addr' and set it to the start of the SCREEN (16384)
    @SCREEN
    D=A
    @addr
    M=D

    (INNER_LOOP)
        // b. Write the value of 'color' to the memory address stored in 'addr'
        //    (Hint: Use A=M to treat 'addr' as a pointer)
        @color
        D=M
        @addr
        A=M
        M=D
        // c. Increment 'addr' (addr = addr + 1)
        @1
        D=A
        @addr
        M=D+M
        // d. Check if we reached the end:
        //    Calculate (addr - 24576)
        //    If it's < 0, Jump back to INNER_LOOP
        @addr
        D=M
        @24576
        D=D-A
        @INNER_LOOP
        D;JLT
    // e. Once the screen is full, jump back to MAIN_LOOP
@MAIN_LOOP
0;JMP
