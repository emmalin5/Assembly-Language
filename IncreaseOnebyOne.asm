    ORG 0000H         ; Starting address of the program

    MOV A, #98H       ; Load packed BCD number '98' into accumulator

    ; Step 1: Extract the upper BCD digit (9)
    MOV B, A          ; Copy A to B (so we can manipulate A)
    ANL A, #0F0H      ; Mask the lower nibble, leave the upper nibble (upper digit 9)
    SWAP A            ; Swap upper nibble to lower nibble
    MOV R1, A         ; Store the upper BCD digit (9) in R1

    ; Step 2: Extract the lower BCD digit (8)
    MOV A, B          ; Restore original packed BCD value
    ANL A, #0FH       ; Mask the upper nibble, leave the lower nibble (lower digit 8)

    ; Step 3: Convert the BCD digits to binary
    MOV B, #0AH       ; Set B to 10 for multiplication (upper digit * 10)
    MUL AB            ; A = A * B (i.e., A = 9 * 10 = 90)
    
    ADD A, R1         ; Add the lower BCD digit (8) to get 98

    ; The result (98 in binary) is now stored in the accumulator (A)

    JMP $             ; Infinite loop to end the program

    END               ; End of program
