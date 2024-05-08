.global main
main:
    mov r0, #12  @ Aqui se define el X "quemado"
    bl fib
    bx lr

fib:
    cmp r0, #0
    beq exit0
    cmp r0, #1
    beq exit1

    mov r1, #0
    mov r2, #1

loop:
    sub r0, #1 @ Se resta 1 al X
    cmp r0, #0 @ Aqui se compara si se llega a 0
    beq exit0

    add r3, r1, r2   @Se hacen los pasos de fibonacci
    mov r1, r2
    mov r2, r3

    b loop

exit1:
    mov r0, #1
    bx lr

exit0:
    mov r0, #0
    bx lr
