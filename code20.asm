global _main
extern _printf

section .data
msg db "Assembly Language 20 Tasks Completed!", 10, 0

section .text
_main:
push msg
call _printf
add esp, 4
xor eax, eax
ret