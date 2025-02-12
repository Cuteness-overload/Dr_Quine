; A Comment
extern fprintf, fopen, fclose
%macro START 0
global main
section .text
main:
push rbp
mov rbp, rsp
sub rsp, 4+12
mov rdi, fname
mov rsi, perms
call fopen
mov dword [rbp-4], eax
PRINT
mov edi, dword [rbp-4]
call fclose
mov rax, 0
mov rsp, rbp
pop rbp
ret
%endmacro
%macro PRINT 0
mov rdi, rax
mov rsi, format
mov rdx, 10
mov rcx, 34
mov r8, format
call fprintf
%endmacro
START
section .data
fname: db "Grace_kid.s", 0
perms: db "w", 0
format: db "; A Comment%1$cextern fprintf, fopen, fclose%1$c%%macro START 0%1$cglobal main%1$csection .text%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 4+12%1$cmov rdi, fname%1$cmov rsi, perms%1$ccall fopen%1$cmov dword [rbp-4], eax%1$cPRINT%1$cmov edi, dword [rbp-4]%1$ccall fclose%1$cmov rax, 0%1$cmov rsp, rbp%1$cpop rbp%1$cret%1$c%%endmacro%1$c%%macro PRINT 0%1$cmov rdi, rax%1$cmov rsi, format%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, format%1$ccall fprintf%1$c%%endmacro%1$cSTART%1$csection .data%1$cfname: db %2$cGrace_kid.s%2$c, 0%1$cperms: db %2$cw%2$c, 0%1$cformat: db %2$c%3$s%2$c%1$c"
