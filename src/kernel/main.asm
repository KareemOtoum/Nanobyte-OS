org 0x0
bits 16

%define ENDL 0x0D, 0x0A

start:
    mov si, msg
    call print_string

.halt:
    cli
    hlt

print_string:
    push si
    push ax

.loop:
    lodsb
    or al, al
    jz .done

    mov ah, 0x0e
    int 0x10

    jmp .loop

.done:
    pop ax
    pop si
    ret

msg: db "Hello World From KERNEL!", ENDL, 0