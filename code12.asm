global _main
extern _printf

section .data
format db "AND result = %d, OR result = %d", 10, 0

section .text
_main:
mov eax, 0xF0
and eax, 0x0F    ; result 0

mov ebx, 0xF0
or ebx, 0x0F     ; result 255

push ebx
push eax
push format
call _printf
add esp, 12
xor eax, eax
ret