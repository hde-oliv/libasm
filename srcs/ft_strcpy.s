section .text
    global ft_strcpy

ft_strcpy:
    mov rax, rdi

copy_loop:
    mov bl, [rsi]
    mov [rdi], bl
    cmp bl, 0
    je end

    inc rdi
    inc rsi

    jmp copy_loop

end:
    ret
