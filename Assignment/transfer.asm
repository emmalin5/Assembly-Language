ORG 0000H
MOV R0,#70H
MOV R1,#60H
MOV R2,#05H

TRANSFERLOOP:
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	DJNZ R2, TRANSFERLOOP

END