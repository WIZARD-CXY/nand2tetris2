// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@8192
D=A
@totalwords
M=D
@SCREEN
D=A

@R0
M=D

(LOOP)
@KBD
D=M

// if KBD !=0 set the whole screen black
@BLACK
D;JNE

// store the white color in r1
R1=0
@UPDATE
0;JMP

(BLACK)
// store black color in r1
R1=-1
// then update
@UPDATE
0;JMP

(UPDATE)

// if the old status is same with the new status continue
@KBD
D=M

(FILL)
// FILL program is used to fill color R1 from starting address R0

@R1
D=M

@R0




