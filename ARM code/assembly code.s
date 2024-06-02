.data
input_string:   .asciz "Hello World\n" @ Inicializa string de entrada
output_string:  .space 100 @ Inicializa string de salida

.text
.global main
_start:
main:
    LDR r0, =input_string   @ Cargar dirección del string de entrada
    LDR r1, =output_string  @ Cargar dirección del string de salida
    MOV r2, #0             @ Inicializar índice del string de entrada
    MOV r3, #0             @ Inicializar índice del string de salida

loop:
    LDRB r4, [r0, r2]      @ Cargar un byte de del string de entrada
    CMP r4, #0             @ Verificar el terminador nulo
    BEQ end

    CMP r4, #'a'           @ Verificar si es una vocal 
    BEQ replace
    CMP r4, #'e'
    BEQ replace
    CMP r4, #'i'
    BEQ replace
    CMP r4, #'o'
    BEQ replace
    CMP r4, #'u'
    BEQ replace
    CMP r4, #'A'           
    BEQ replace
    CMP r4, #'E'
    BEQ replace
    CMP r4, #'I'
    BEQ replace
    CMP r4, #'O'
    BEQ replace
    CMP r4, #'U'
    BEQ replace

    STRB r4, [r1, r3]      @ Copiar carácter no vocal a la salida
    ADD r2, r2, #1         @ Pasar al siguiente carácter del string de entrada
    ADD r3, r3, #1         @ Pasar a la siguiente posición del string de salida
    B loop

replace:
    MOV r4, #'X'           @ Reemplazar vocal con 'X'
    STRB r4, [r1, r3]      @ Copiar 'X' al string de salida
    ADD r2, r2, #1         @ Pasar al siguiente carácter del string de entrada
    ADD r3, r3, #1         @ Pasar a la siguiente posición del string de salida
    B loop

end:
    MOV r4, #0             @ Agregar terminador nulo del string de salida
    STRB r4, [r1, r3]

    LDR r7, =output_string

    .end