global _main
extern _printf

section .data
format db "INC = %d, DEC = %d", 10, 0

section .text
_main:
mov eax, 10
inc eax
mov ebx, 20
dec ebx
push ebx
push eax
push format
call _printf
add esp, 12
xor eax, eax
ret