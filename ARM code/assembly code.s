.data
input_string:   .asciz "Mercury Venus Earth Moon Mars Jupiter Saturn Neptune Pluto\n" @ String de entrada
output_string:  .space 100                   										  @ String de salida
x_char:    .byte =88

.text
.global main
_start:
main:
    LDR r1, =input_string   @ Dirección del string de entrada
    LDR r2, =output_string  @ Dirección del string de salida
    ADD r3,r0, #0           @ Índice del string de entrada
    ADD r4,r0, #0           @ Índice del string de salida

next_word:
    ADD r5,r0, #0           @ Contador de vocales
    ADD r6, r3,#0           @ Guardar el inicio de la palabra

count_vowels:
    LDRB r7, [r1, r3]       @ Cargar un byte del string de entrada
    CMP r7, #' '            @ Verificar si es un espacio
    BEQ check_vowel_count
    CMP r7, #0              @ Verificar si es el fin del string
    BEQ check_vowel_count

    CMP r7, #'a'            @ Verificar si es una vocal 
    BEQ increment_vowel_count
    CMP r7, #'e'
    BEQ increment_vowel_count
    CMP r7, #'i'
    BEQ increment_vowel_count
    CMP r7, #'o'
    BEQ increment_vowel_count
    CMP r7, #'u'
    BEQ increment_vowel_count
    CMP r7, #'A'
    BEQ increment_vowel_count
    CMP r7, #'E'
    BEQ increment_vowel_count
    CMP r7, #'I'
    BEQ increment_vowel_count
    CMP r7, #'O'
    BEQ increment_vowel_count
    CMP r7, #'U'
    BEQ increment_vowel_count

next_char:
    ADD r3, r3, #1
    B count_vowels

increment_vowel_count:
    ADD r5, r5, #1
    B next_char

check_vowel_count:
    CMP r5, #3              @ Comprobar si el número de vocales es 3 o más
    BLT copy_word           @ Si no, copiar la palabra tal cual

replace_vowels:
    CMP r6, r3              @ Comparar índice del inicio de la palabra con el índice actual
    BEQ end_word            @ Si son iguales, terminar la palabra

    LDRB r7, [r1, r6]       @ Cargar un byte del string de entrada
    CMP r7, #' '            @ Verificar si es un espacio
    BEQ end_word
    CMP r7, #0              @ Verificar el terminador nulo
    BEQ end_word

    CMP r7, #'a'            @ Verificar si es una vocal 
    BEQ write_X
    CMP r7, #'e'
    BEQ write_X
    CMP r7, #'i'
    BEQ write_X
    CMP r7, #'o'
    BEQ write_X
    CMP r7, #'u'
    BEQ write_X
    CMP r7, #'A'
    BEQ write_X
    CMP r7, #'E'
    BEQ write_X
    CMP r7, #'I'
    BEQ write_X
    CMP r7, #'O'
    BEQ write_X
    CMP r7, #'U'
    BEQ write_X

copy_char_in_word:
    STRB r7, [r2, r4]      @ Copiar carácter no vocal al string de salida
    ADD r6, r6, #1
    ADD r4, r4, #1
    B replace_vowels

write_X:
    LDR r7, =88            @ Cargar X en r7 usando su valor ASCII (88)
    STRB r7, [r2, r4]      @ Copiar X al string de salida
    ADD r6, r6, #1
    ADD r4, r4, #1
    B replace_vowels

copy_word:
    CMP r6, r3              @ Comparar indices
    BEQ end_word            @ Si son iguales, terminar la palabra

    LDRB r7, [r1, r6]       @ Cargar un byte del string de entrada
    CMP r7, #' '            @ Verificar si es un espacio
    BEQ end_word
    CMP r7, #0              @ Verificar si es el fin del string
    BEQ end_word

    STRB r7, [r2, r4]       @ Copiar carácter al string de salida
    ADD r6, r6, #1
    ADD r4, r4, #1
    B copy_word

end_word:
    LDRB r7, [r1, r3]       @ Cargar espacio o fin de string
    STRB r7, [r2, r4]       @ Copiar al string de salida
    ADD r3, r3, #1
    ADD r4, r4, #1
    CMP r7, #0              @ Verificar si es el final del string
    BNE next_word           @ Si no es el final, continuar con la siguiente palabra
end:
.end