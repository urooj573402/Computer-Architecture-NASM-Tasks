global _main
extern _printf

section .data
format db "20 / 4 = %d", 10, 0

section .text
_main:
mov ax, 20
mov bl, 4
div bl
movzx eax, al
push eax
push format
call _printf
add esp, 8
xor eax, eax
ret