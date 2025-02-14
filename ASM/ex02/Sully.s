section .data
modded db "Sully_%d.s", 0
perms db "w", 0
compl1 db "nasm -f elf64 Sully_%d.s", 0
compl2 db "gcc -lc -no-pie -z noexecstack -o Sully_%1$d Sully_%1$d.o", 0
compl3 db "./Sully_%d", 0
code db "section .data%2$cmodded db %3$cSully_%%d.s%3$c, 0%2$cperms db %3$cw%3$c, 0%2$ccompl1 db %3$cnasm -f elf64 Sully_%%d.s%3$c, 0%2$ccompl2 db %3$cgcc -lc -no-pie -z noexecstack -o Sully_%%1$d Sully_%%1$d.o%3$c, 0%2$ccompl3 db %3$c./Sully_%%d%3$c, 0%2$ccode db %3$c%1$s%3$c, 0%2$ci dq %4$d %2$csection .bss%2$cfile resb 32%2$cfptr resq 1%2$crun resb 100%2$csection .text%2$cglobal main%2$cextern sprintf, fopen, fprintf, fclose, system%2$cdiff_check:%2$cmov rax, [i]%2$csub rax, 1%2$cret%2$cnew_file_name:%2$cxor rax, rax%2$cmov rdi, file%2$cmov rcx, 32%2$crep stosb%2$cmov rdi, file%2$cmov rsi, modded%2$cmov rdx, [i]%2$csub rdx, 1%2$ccall sprintf%2$cret%2$copen_it:%2$cmov rdi, file%2$cmov rsi, perms%2$ccall fopen%2$cmov [fptr], rax%2$cret%2$cwrite_it:%2$cmov rdi, [fptr]%2$cmov rsi, code%2$cmov rdx, code%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, [i]%2$csub r9, 1%2$ccall fprintf%2$cret%2$cassemble:%2$cxor rax, rax%2$cmov rdi, run%2$cmov rcx, 100%2$crep stosb%2$cmov rdi, run%2$cmov rsi, compl1%2$cmov rdx, [i]%2$csub rdx, 1%2$ccall sprintf%2$cret%2$ccompile:%2$cxor rax, rax%2$cmov rdi, run%2$cmov rcx, 100%2$crep stosb%2$cmov rdi, run%2$cmov rsi, compl2%2$cmov rdx, [i]%2$csub rdx, 1%2$ccall sprintf%2$cret%2$crun_it:%2$cxor rax, rax%2$cmov rdi, run%2$cmov rcx, 100%2$crep stosb%2$cmov rdi, run%2$cmov rsi, compl3%2$cmov rdx, [i]%2$csub rdx, 1%2$ccall sprintf%2$cret%2$cmain:%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 8%2$ccall diff_check%2$ctest rax, rax%2$cjs .end%2$ccall new_file_name%2$ccmp rax, 9%2$cjl .end%2$ccall open_it%2$ccmp rax, 0%2$cje .end%2$ccall write_it%2$cmov rdi, [fptr]%2$csub rsp, 8%2$ccall fclose%2$cadd rsp, 8%2$ccall assemble%2$ccmp rax, 23%2$cjl .end%2$cmov rdi, run%2$csub rsp, 8%2$ccall system%2$cadd rsp, 8%2$ccall compile%2$ccmp rax, 51%2$cjl .end%2$cmov rdi, run%2$csub rsp, 8%2$ccall system%2$cadd rsp, 8%2$ccall run_it%2$ccmp rax, 9%2$cjl .end%2$cmov rdi, run%2$csub rsp, 8%2$ccall system%2$cadd rsp, 8%2$c.end:%2$cmov rsp, rbp%2$cpop rbp%2$cmov rax, 0%2$cret", 0
i dq 5 
section .bss
file resb 32
fptr resq 1
run resb 100
section .text
global main
extern sprintf, fopen, fprintf, fclose, system
diff_check:
mov rax, [i]
sub rax, 1
ret
new_file_name:
xor rax, rax
mov rdi, file
mov rcx, 32
rep stosb
mov rdi, file
mov rsi, modded
mov rdx, [i]
sub rdx, 1
call sprintf
ret
open_it:
mov rdi, file
mov rsi, perms
call fopen
mov [fptr], rax
ret
write_it:
mov rdi, [fptr]
mov rsi, code
mov rdx, code
mov rcx, 10
mov r8, 34
mov r9, [i]
sub r9, 1
call fprintf
ret
assemble:
xor rax, rax
mov rdi, run
mov rcx, 100
rep stosb
mov rdi, run
mov rsi, compl1
mov rdx, [i]
sub rdx, 1
call sprintf
ret
compile:
xor rax, rax
mov rdi, run
mov rcx, 100
rep stosb
mov rdi, run
mov rsi, compl2
mov rdx, [i]
sub rdx, 1
call sprintf
ret
run_it:
xor rax, rax
mov rdi, run
mov rcx, 100
rep stosb
mov rdi, run
mov rsi, compl3
mov rdx, [i]
sub rdx, 1
call sprintf
ret
main:
push rbp
mov rbp, rsp
sub rsp, 8
call diff_check
test rax, rax
js .end
call new_file_name
cmp rax, 9
jl .end
call open_it
cmp rax, 0
je .end
call write_it
mov rdi, [fptr]
sub rsp, 8
call fclose
add rsp, 8
call assemble
cmp rax, 23
jl .end
mov rdi, run
sub rsp, 8
call system
add rsp, 8
call compile
cmp rax, 51
jl .end
mov rdi, run
sub rsp, 8
call system
add rsp, 8
call run_it
cmp rax, 9
jl .end
mov rdi, run
sub rsp, 8
call system
add rsp, 8
.end:
mov rsp, rbp
pop rbp
mov rax, 0
ret