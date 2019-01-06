; adding two 16bit numbers
; using HL and DE pairs 

MVI h,F0H
MVI l,04H
XCHG
MVI D,04H
MVI E,0FH

MOV A,E
ADD L
MOV L,A

MOV A,D
ADC H
MOV H,A

SHLD 2008H

HLT
