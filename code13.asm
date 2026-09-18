global _main
extern _printf

section .data
format db "XOR result = %d", 10, 0

section .text
_main:
mov eax, 0x55
xor eax, 0x55    ; result 0

push eax
push format
call _printf
add esp, 8
xor eax, eax
ret