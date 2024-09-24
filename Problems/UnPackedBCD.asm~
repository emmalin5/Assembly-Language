ORG 0000H
MOV A, #0FFH
MOV R0,#20H 
MOV R1, #2

; Step 1: Convert FFH to BCD (255 in decimal)
CONTINUE: MOV B, #10
DIV AB     ; Divide A by 10, result: A = quotient (25), B = remainder (5)
MOV @R0, B ; add remind to memory location 20H 
INC R0   ; at 21H
DJNZ R1, CONTINUE  ; R1 = 1, 0 
ANL A, #0FH ; Clear the upper nibble of the last quotient (hundreds place)
MOV @R0, A
JMP $    ; Infinite loop to end the program
END
