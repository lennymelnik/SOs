mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; We already have 'l' loaded onto the 'al' part of the ax register
mov al, 'o'
int 0x10
mov al, ' '
int 0x10
mov al, 'w'
int 0x10
mov al, 'o'
int 0x10
mov al, 'r'
int 0x10
mov al, 'l'
int 0x10
mov al, 'd'
int 0x10

jmp $ ; jump to the address we are on. (will cause a loop)

; add the zeros and the space for the last two bytes to indicate this is a bootable drive
times 510 - ($-$$) db 0
dw 0xaa55
