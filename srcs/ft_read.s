section .text
    global ft_read
    extern __errno_location

ft_read:
    mov rax, 0
    syscall

    test rax, rax
    js error
    jns return

error:
    imul rax, -1
    mov rsi, rax
    call [rel __errno_location wrt ..got]
    mov [rax], rsi
    mov rax, -1
    ret

return:
    ret
