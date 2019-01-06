; program for divison
MVI A,30 ; dividend 
MVI B,05 ; divisor 
MVI C,00 ; quotient 
 
LP: CMP B
JC LP1

SUB B  ; A=A-B
INR C ; incrementing quotient 
JNZ LP ; if(z!=0) then jump to lp 


LP1: STA 2000H ; showing remainder 
MOV A,C 
STA 2001H ; showing quotient 

HLT	; stop 
