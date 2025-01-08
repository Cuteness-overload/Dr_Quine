section .text
global _start
extern printf
_start:
lea rdi, [rel str]
lea rcx, [rel str]
mov rsi, 10
mov rdx, 34
xor rax, rax
call printf wrt ..plt
mov rax, 60
syscall
ret
section .rodata
str: db "section .text%1$cglobal _start%1$cextern printf%1$c_start:%1$clea rdi, [rel str]%1$clea rsi, [rel str]%1$cmov rdx, 10%1$cmov rcx, 34%1$cxor rax, rax%1$ccall printf wrt ..plt%1$cret%1$csection .rodata%1$cstr:%1$cdb %2$c%3$s%2$c",0