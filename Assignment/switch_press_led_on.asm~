ORG 0000H          ; Start at address 0000H
    LJMP MAIN      ; Jump to the main program

ORG 0003H          ; External Interrupt 0 vector address
    LJMP EX0_ISR   ; Jump to the External Interrupt 0 ISR

MAIN:
    MOV P2, #0FFH   ; Turn off all LEDs (Set P2 high)
    MOV P3, #0FFH  ; Set P3 as input (for switch)
    SETB IT0       ; Configure INT0 to trigger on falling edge
    SETB EX0       ; Enable External Interrupt 0 (INT0)
    SETB EA        ; Enable global interrupts

CHECK_SWITCH:
    JB P3.2, TURN_OFF_LED  
    SJMP CHECK_SWITCH      

TURN_OFF_LED:
    SETB P2.0              ; Turn off the LED at P2.1
    SJMP CHECK_SWITCH      ; Keep checking the button state

EX0_ISR:
    CLR P2.0      ; Turn on LED at P2.1
    CLR IE0       ; Clear the External Interrupt 0 flag
    RETI          ; Return from interrupt

END
