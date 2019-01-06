MVI C,05H
LOOP: 	MOV A,C
		CPI 00H
        JZ EXIT
		
        LXI H,2000H
        MVI B,01H
        
        LOOP1: 	MOV A,B
        		CMP C
                JZ END
        
      			MOV D,M
        		INX H
        		MOV A,M
        
        		CMP D
        		JC LP
        		JMP NEXT
        		LP: MOV M,D
        			DCX H
            		MOV M, A
            		INX H
        
        		NEXT: 	INR B
        				JMP LOOP1
        
END:   DCR C 
JNZ LOOP

EXIT: HLT
