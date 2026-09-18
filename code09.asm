global _main
extern _printf

section .data
format db "5 * 4 = %d", 10, 0

section .text
_main:
mov al, 5
mov bl, 4
mul bl
movzx eax, ax
push eax
push format
call _printf
add esp, 8
xor eax, eax
ret