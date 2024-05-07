.global _start
.equ endlist, 0xaaaaaaaa
_start:
	LDR R0,=list
	MOV R1,#0 
	MOV R2, #5
	MOV R3, #0
	
loop:
	CMP R1,#10
	BEQ exit
	LDR R4,[R0]
	
	CMP R4, R2
	BGE mult
	
	B sum
	
cont:
	LDR R4,[R0],#4
	add R1,R1, #1
	BAL loop
	
sum:

	ADD R3, R4, R2
	STR R3,[R0]
	B cont
	
mult:

	MUL R3, R4, R2
	STR R3,[R0]
	B cont	
exit:


   
	
.data
list:
	.word 1,2,3,4,5,6,7,8,9,10