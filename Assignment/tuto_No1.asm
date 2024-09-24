ORG 0000H          ; Starting address of the program

MOV R0, #70H       ; Load the source address low byte into R0
MOV R1, #80H       ; Load the destination address low byte into R1
MOV R2, #05H       ; Load the number of bytes to transfer into R2

TRANSFER_LOOP:
    MOV A, @R0     ; Load data from source address (pointed by R0) into accumulator
    MOV @R1, A     ; Store data into destination address (pointed by R1)

    INC R0         ; Increment source address pointer
    INC R1         ; Increment destination address pointer

    DJNZ R2, TRANSFER_LOOP ; Decrement counter and repeat until all bytes are transferred

    ; End of program
    SJMP $         ; Infinite loop to halt the program

END                ; End of program
