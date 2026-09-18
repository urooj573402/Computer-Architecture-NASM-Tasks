global _main
extern _printf

section .data
format db "Jump executed successfully!", 10, 0

section .text
_main:
jmp target_label

mov eax, 0 ; Ye instruction skip ho jayegi

target_label:
push format
call _printf
add esp, 4
xor eax, eax
ret