ORG 0000H          ; Origin, start of the program

; Load the first 16-bit number (FEDC) into registers R0 (higher byte) and R1 (lower byte)
MOV A, #0FEH       ; Load A with FEH (higher byte of FEDC)
MOV R0, A          ; Move FEH into R0
MOV A, #0DCH       ; Load A with DCH (lower byte of FEDC)
MOV R1, A          ; Move DCH into R1

; Load the second 16-bit number (1234) into registers R2 (higher byte) and R3 (lower byte)
MOV A, #12H        ; Load A with 12H (higher byte of 1234)
MOV R2, A          ; Move 12H into R2
MOV A, #34H        ; Load A with 34H (lower byte of 1234)
MOV R3, A          ; Move 34H into R3

; Subtract lower bytes (R1 - R3)
CLR C              ; Clear the carry/borrow flag before subtraction
MOV A, R1          ; Load lower byte of the first number (DCH) into A
SUBB A, R3         ; Subtract lower byte of the second number (34H) from A with borrow
MOV 22H, A         ; Store the result (lower 8 bits) in memory location 22H

; Subtract higher bytes (R0 - R2) with borrow
MOV A, R0          ; Load higher byte of the first number (FEH) into A
SUBB A, R2         ; Subtract higher byte of the second number (12H) from A with borrow
MOV 21H, A         ; Store the result (higher 8 bits) in memory location 21H

; Check if there was a borrow
MOV A, #00H        ; Clear A
           ; If there was a borrow, set A to 1

NO_BORROW:
MOV 00H, A         ; Store the borrow bit (0 or 1) in memory location 00H

END                ; End of the program
