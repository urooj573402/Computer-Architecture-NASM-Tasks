global _main
extern _printf

section .data
format db "Sum from Function = %d", 10, 0

section .text
_main:
mov eax, 15
mov ebx, 25
call add_numbers

push eax
push format
call _printf
add esp, 8
xor eax, eax
ret

add_numbers:
add eax, ebx
ret