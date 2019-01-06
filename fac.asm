
		LXI H, 2000H	;Load data from memory
		MOV B, M	;Load data to B register
		MVI D, 01H	;Set D register with 1
 FACTORIAL:     CALL MULTIPLY	;Subroutine call for multiplication
		DCR B	;Decrement B
		JNZ FACTORIAL	;Call facto8rial till B becomes 0
		INX H	;Increment memory
		MOV M, D	;Store result in memory
		HLT	;Halt
 MULTIPLY:	MOV E, B	;Transfer contents of B to C
		MVI A, 00H	;Clear accumulator to store result
 MULTIPLYLOOP:  ADD D	;Add contents of D to A
		DCR E	;Decrement E
		JNZ MULTIPLYLOOP	;Repeated addition
		MOV D, A	;Transfer contents of A to D
		RET	;Return from subroutine
