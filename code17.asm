global _main
extern _printf

section .data
format db "Loop count down: %d", 10, 0

section .text
_main:
mov ecx, 3 ; Loop 3 baar chalega

loop_start:
push ecx
push ecx
push format
call _printf
add esp, 8
pop ecx
loop loop_start

xor eax, eax
ret