[org 0x7c00] ; So Strings are not messed up

mov bp, 0x7c00 ; Stack stuff
mov sp, bp

mov bx, BootString ; Move and print boot string
call PrintStr


jmp $

%include "print.asm"
    



BootString: db 'Now Booting Help OS 1.0.0!', 0

times 510-($-$$) db 0
dw 0xaa55