    .data
matriz1:
    .word 1, 2, 3, 4
    .word 5, 6, 7, 8
    .word 9, 10, 11, 12
    .word 13, 14, 15, 16

matriz2:
    .word 4, 3, 2, 1
    .word 8, 7, 6, 5
    .word 12, 11, 10, 9
    .word 16, 15, 14, 13

resultado:
    .space 64  

	.text
	.global _start
_start:
	mov r0, #0  				@ inicializa la fila en 0
filas:
	cmp r0, #4  				@ revisa si se llego a la ultima fila
	bge fin     				@ si se cumple, termina
	mov r1, #0  				@ inicializa la columna en 0
columnas:
	cmp r1, #4					@ revisa si se llego a la ultima columna
	bge sig_fila				@ si se cumple, va a la logica para la siguiente fila
	lsl r5, r0, #4				@ calcula la fila correcta
	ldr r2, =matriz1 			@ carga el registro con la direccion de la matriz1
	add r2, r2, r5				@ calcula la columna
	ldr r3, [r2, r1, LSL #2]	@ carga el registro con el valor en memoria de la fila y columna actual
	ldr r2, =matriz2 			@ carga el registro con la direccion de la matriz2
	add r2, r2, r5				@ calcula la columna
	ldr r4, [r2, r1, LSL #2]	@ carga el registro con el valor en memoria de la fila y columna actual
	add r3, r3, r4				@ suma de los elementos
	ldr r2, =resultado 			@ carga el registro con la direccion de la matriz resultado
	add r2, r2, r5				@ calcula la columna
	str r3, [r2, r1, LSL #2]	@ carga la memoria del resultado con el valor de la suma
	add r1, r1, #1      		@ incrementa la columna
	b columnas     				@ vuelve a llamar el bucle para las columnas
sig_fila:
	add r0, r0, #1      		@ incrementa la fila
    b filas      				@ vuelve a llamar el bucle para las filas
fin:
	
	