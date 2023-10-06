section .text
    global ft_strdup
    extern malloc
    extern __errno_location

ft_strdup:
    mov rax, 0
    mov rbx, rdi
    mov rcx, rdi

count_loop:
    cmp byte [rbx], 0
    je allocation

    inc rax
    inc rbx

    jmp count_loop

allocation:
    inc rax
    mov rdi, rax
    mov rbx, rcx
    call [rel malloc wrt ..got]

    test rax, rax
    js error
    jns copy_loop

copy_loop:
    mov dl, [rbx]
    mov [rcx], dl
    cmp dl, 0
    je end

    inc rbx
    inc rcx

    jmp copy_loop

error:
    imul rax, -1
    mov rsi, rax
    call [rel __errno_location wrt ..got]
    mov [rax], rsi
    mov rax, 0
    ret

end:
    ret
