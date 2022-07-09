global even_or_odd
section .text
; input: edi = number
; output: rax
; callee saved registers: rbx, rsp, rbp, r12-r15
even_or_odd:
mov rax, rdi
and rax, 1
cmp rax, 0
je iseven
mov rax, odd
jmp end
iseven:
mov rax, even
end:
ret

section .data
even: db "Even", 0
odd: db "Odd", 0
