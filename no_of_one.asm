MVI A, 0AH
MVI B ,08H
MVI C ,00H

BACK: RAR
JNC SKIP

INR C


SKIP: DCR B
JNZ BACK
MOV A,C
STA 2000
HLT