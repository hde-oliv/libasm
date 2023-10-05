section .text
    global ft_strlen

ft_strlen:
    mov rax, 0

count_loop:
    cmp byte [rdi], 0
    je end

    inc rax
    inc rdi

    jmp count_loop

end:
    ret
