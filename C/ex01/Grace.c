#include <stdio.h>/*commentwoohhoo*/
#define A(x)int main(){char *a="#include <stdio.h>/*commentwoohhoo*/%c#define A(x)int main(){char *a=%c%s%c;FILE *fptr=fopen(%cGrace_kid.c%c, %cw%c);fprintf(fptr,a,10,34,a,34,34,34,34,34,10,10,10);fclose(fptr);return 0;}%c#define B(s)C(s)%c#define C(s)#s%cA(B(A(x)))";FILE *fptr=fopen("Grace_kid.c", "w");fprintf(fptr,a,10,34,a,34,34,34,34,34,10,10,10);fclose(fptr);return 0;}
#define B(s)C(s)
#define C(s)#s
A(B(A(x)))