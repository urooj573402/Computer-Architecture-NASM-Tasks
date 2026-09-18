global _main
extern _printf

section .data
format db "Popped Value = %d", 10, 0

section .text
_main:
mov eax, 100
push eax        ; Stack par 100 daala
mov eax, 0      ; Clear EAX
pop eax         ; Stack se wapas 100 nikala

push eax
push format
call _printf
add esp, 8
xor eax, eax
ret