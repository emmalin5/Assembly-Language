ORG 0000H            ; Start at address 0

MAIN:
    MOV P1, #0F0H    ; Set upper 4 bits (columns) as input and lower 4 bits (rows) as output
SCAN: 
    MOV A, #0FEH     ; Start with row 1 low (others high)
    ACALL CHECKCOL   ; Check if any key in this row is pressed

    MOV A, #0FDH     ; Set row 2 low (others high)
    ACALL CHECKCOL   ; Check if any key in this row is pressed

    MOV A, #0FBH     ; Set row 3 low (others high)
    ACALL CHECKCOL   ; Check if any key in this row is pressed

    MOV A, #0F7H     ; Set row 4 low (others high)
    ACALL CHECKCOL   ; Check if any key in this row is pressed

    SJMP SCAN        ; Repeat scanning

CHECKCOL:
    MOV P1, A        ; Output current row pattern to P1
    NOP              ; Small delay for settling
    NOP
    MOV A, P1        ; Read columns

    ANL A, #0F0H     ; Mask the upper 4 bits (columns)
    CJNE A, #0F0H, DECODEKEY  ; If any column is low, a key is pressed

    RET              ; No key pressed, return

DECODEKEY:
    ; Here you would add logic to decode which key was pressed
    ; based on the row and column combination
    ; For example, if Row 1 (P1.0 low) and Column 1 (P1.4 low),
    ; that would correspond to key 1 on a typical keypad.

    ; For simplicity, we'll just flash an LED or something to indicate a key press.
    MOV P2, #0FFH    ; Turn on LEDs on Port 2 (for example)
    ACALL DELAY      ; Simple delay
    MOV P2, #00H     ; Turn off LEDs
    ACALL DELAY

    RET              ; Return to continue scanning

DELAY:
    MOV R1, #005     ; Outer loop
   
DELAY_LOOP:
    DJNZ R1, DELAY_LOOP ; Inner loop countdown
   
    RET

END
