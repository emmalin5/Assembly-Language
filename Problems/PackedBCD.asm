ORG 0000H
MOV A, #98H
MOV R0, A
SWAP A
ANL A, #0FH
MOV B, #10
MUL AB
 MOV R1, A
MOV A, R0
 ANL A, #0FH
ADD A, R1
JMP $
END;