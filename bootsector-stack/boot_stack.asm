mov ah, 0x0e ;First we set to tty mode

mov bp, 0x8000

mov sp, bp ; since the stack is empty, we point sp to bp

push 'A'

push 'B'

push 'C'

mov al, [0x7ffe]
int 0x10

pop bx
mov al, bl
int 0x10


pop bx
mov al, bl
int 0x10


pop bx
mov al, bl
int 0x10


jmp $
times 510-($-$$) db 0
dw 0xaa55
