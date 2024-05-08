.global _start

.section .data
fib_limit:  .word   10          @ Número máximo de Fibonacci a calcular (Este es el X "quemado" X = 10)
newline:    .asciz  "\n"        @ Carácter de nueva línea

.section .bss
fib_array:  .skip   40          @ Reservar espacio para almacenar los números de Fibonacci

.section .text
_start:
    mov r0, #10                 @ Definir X
    mov r1, #0                  @ Primer número de Fibonacci
    mov r2, #1                  @ Segundo número de Fibonacci
    mov r3, #2                  @ Contador de iteraciones

fib_loop:
    cmp r3, r0                  @ Comparar contador con límite
    bge fib_done                @ Salir si se alcanza el límite

    add r4, r1, r2              @ Sumar los dos últimos números
    str r4, [r5], #4            @ Almacenar el resultado en el array y actualizar el puntero
    mov r1, r2                  @ Actualizar el primer número con el segundo
    mov r2, r4                  @ Actualizar el segundo número con el resultado
    add r3, r3, #1              @ Se incrementa el contador

    b fib_loop

fib_done:
    mov r0, #1                  @ File descriptor 1 (stdout)
    ldr r1, =fib_array          @ Puntero al array de Fibonacci
    mov r2, #10                 @ Longitud del array (10 para este ejemplo)
    mov r7, #4                  @ Llamada al sistema para escribir en la consola
    swi 0

    mov r0, #1                  @ File descriptor 1 (stdout)
    ldr r1, =newline            @ Puntero al carácter de nueva línea
    mov r2, #1                  @ Longitud del carácter de nueva línea
    mov r7, #4                  @ Llamada al sistema para escribir en la consola
    swi 0

    mov r7, #1                  @ Salir del programa
    swi 0
