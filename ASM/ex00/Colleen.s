; Exterior Comment
global main
; This is a comment
extern printf
colleen:
mov rdi, format
mov rsi, 10
mov rdx, 34
mov rcx, format
push rbx
call printf
pop rbx
ret
main:
push rbx
call colleen
pop rbx
mov rax, 0
ret
section .data
format: db "; Exterior Comment%1$cglobal main%1$c; This is a comment%1$cextern printf%1$ccolleen:%1$cmov rdi, format%1$cmov rsi, 10%1$cmov rdx, 34%1$cmov rcx, format%1$cpush rbx%1$ccall printf%1$cpop rbx%1$cret%1$cmain:%1$cpush rbx%1$ccall colleen%1$cpop rbx%1$cmov rax, 0%1$cret%1$csection .data%1$cformat: db %2$c%3$s%2$c%1$c"
