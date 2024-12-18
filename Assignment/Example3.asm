ORG 0000H ; Reset vector
 JMP MAIN ; Jump to the address location pointed by
 ; the Label ‘MAIN’ to start execution
ORG 0003H ; External Interrupt 0 ISR location
 RETI ; Simply return. Do nothing
ORG 000BH ; Timer 0 Interrupt ISR location
 RETI ; Simply return. Do nothing
ORG 0013H ; External Interrupt 1 ISR location
 RETI ; Simply return. Do nothing
ORG 001BH ; Timer 1 Interrupt ISR location
RETI ; Simply return. Do nothing 
ORG 0023H ; Serial Interrupt ISR location
 RETI ; Simply return. Do nothing
;####################################################################
; Start of main Program
MAIN: CLR P1.0 ; De-activate 8255 Reset line
 MOV SP, #08H ; Set stack at memory location 08H
 MOV A, #80H ; Load the initial Control Word
 MOV DPTR,#8003H ; Load DPTR with the address of Control 
 ;Register
 MOVX @DPTR, A ; Output the Control word to Control Register
 JMP $ ; Simply Loop here
END ;END of Assembly Program