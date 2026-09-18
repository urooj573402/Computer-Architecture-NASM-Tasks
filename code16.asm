global _main
extern _printf

format_equal db "Numbers are equal!", 10, 0

section .text
_main:
mov eax, 10
mov ebx, 10
cmp eax, ebx
je numbers_match

ret

numbers_match:
push format_equal
call _printf
add esp, 4
xor eax, eax
ret