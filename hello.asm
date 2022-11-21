;Hello World

global _start

section .text

_start:
    MOV rax, 0x1
    MOV rdi, 0x1
    MOV rsi, msg
    MOV rdx, msgLEN
    SYSCALL

    MOV rax, 60
    MOV rdi, 0
    SYSCALL

section .data
    msg: DB "I've had enough of that Assembly thing. Rescue me Dennis Ritchie.", 0xA
    msgLEN: EQU $ - msg;