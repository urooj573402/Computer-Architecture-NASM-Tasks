global _main
extern _printf

section .data
format db "SHL (5 << 1) = %d, SHR (10 >> 1) = %d", 10, 0

section .text
_main:
mov eax, 5
shl eax, 1       ; 5 * 2 = 10

mov ebx, 10
shr ebx, 1       ; 10 / 2 = 5

push ebx
push eax
push format
call _printf
add esp, 12
xor eax, eax
ret