section .text
    global ft_strcmp

ft_strcmp:
    mov rax, 0
    mov rbx, 0
    mov rcx, 0

compare_loop:
    mov bl, [rdi]
    mov cl, [rsi]

    cmp bl, cl
    jne calculate_difference

    cmp bl, 0
    je calculate_difference

    cmp cl, 0
    je calculate_difference

    inc rdi
    inc rsi

    jmp compare_loop

calculate_difference:
    sub rbx, rcx
    mov rax, rbx
    jmp end

end:
    ret
