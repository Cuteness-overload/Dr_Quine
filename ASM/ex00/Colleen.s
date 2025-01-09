;a comment outside
section .data
msg db ";a comment outside%1$csection .data%1$cmsg db %2$c%3$s%2$c, 0, 10%1$csection .text%1$cglobal _start%1$cextern printf%1$c_start:%1$clea rdi, [rel msg]%1$cmov rsi, 10%1$cmov rdx, 34%1$c;a comment%1$clea rcx, [rel msg]%1$cxor rax, rax%1$ccall printf wrt ..plt%1$cmov rax, 60%1$cxor rdi, rdi%1$csyscall%1$c", 0, 10
section .text
global _start
extern printf
_start:
lea rdi, [rel msg]
mov rsi, 10
mov rdx, 34
;a comment
lea rcx, [rel msg]
xor rax, rax
call printf wrt ..plt
mov rax, 60
xor rdi, rdi
syscall