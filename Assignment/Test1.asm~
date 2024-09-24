ORG 0000H     ; Start address

MAIN: 
    MOV P2, #0FFH    ; Initialize Port 2 to 0
    MOV R0, #00H   ; Set a counter value in R0 for delay

LOOP: 
    INC R0          ; Increment the value at Port 2
    MOV A, R0
    CPL A
    MOV P2, A
    ACALL DELAY     ; Call delay subroutine
    SJMP LOOP       ; Jump back to the loop to keep counting

DELAY: 
    MOV R1, #0FFH   ; Outer loop delay value
DELAY_LOOP1: 
    DJNZ R1, DELAY_LOOP1 ; Decrement R1 and repeat until zero
    RET             ; Return from delay subroutine

END                ; End of program
