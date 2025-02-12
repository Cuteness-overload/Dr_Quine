#include <stdio.h>
/*
commentwoohhoo
*/
#define A(x)int main(){char *a="#include <stdio.h>%1$c/*%1$ccommentwoohhoo%1$c*/%1$c#define A(x)int main(){char *a=%2$c%3$s%2$c;FILE *fptr=fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c);fprintf(fptr,a,10,34,a);fclose(fptr);return 0;}%1$c#define B(s)C(s)%1$c#define C(s)#s%1$cA(B(A(x)))";FILE *fptr=fopen("Grace_kid.c", "w");fprintf(fptr,a,10,34,a);fclose(fptr);return 0;}
#define B(s)C(s)
#define C(s)#s
A(B(A(x)))
