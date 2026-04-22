section .text
global _start

_start:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, mymsg      ; Adresse der Nachricht
    mov edx, mylen      ; Länge
    int 80h             ; Kernel aufrufen

    mov eax, 1          ; sys_exit
    mov ebx, 0          ; Exit-Code 0
    int 80h             ; Kernel aufrufen

section .data
    mymsg db 'jetzt Hello World!', 0xa
    mylen equ $ - mymsg
