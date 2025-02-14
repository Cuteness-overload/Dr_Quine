#include <stdio.h>
#include <stdlib.h>
#define COMPL "clang -Wall -Wextra -Werror %s -o Sully_%d"
#define CODE "#include <stdio.h>%2$c#include <stdlib.h>%2$c#define COMPL %3$cclang -Wall -Wextra -Werror %%s -o Sully_%%d%3$c%2$c#define CODE %3$c%1$s%3$c%2$cint i=%4$d;%2$cint main(){if(i-1<0)return 0;char file[10];if(sprintf(file, %3$cSully_%%d.c%3$c, i-1) < 9)return 1;FILE *f = fopen(file, %3$cw%3$c);if(!f)return 1;fprintf(f,CODE,CODE,10,34,i-1);fclose(f);char run[50];if(sprintf(run,COMPL,file,i-1)<45)return 1;system(run);if(sprintf(run,%3$c./Sully_%%d%3$c,i-1)<9)return 1;system(run);return 0;}"
int i=5;
int main(){if(i-1<0)return 0;char file[10];if(sprintf(file, "Sully_%d.c", i-1) < 9)return 1;FILE *f = fopen(file, "w");if(!f)return 1;fprintf(f,CODE,CODE,10,34,i-1);fclose(f);char run[50];if(sprintf(run,COMPL,file,i-1)<45)return 1;system(run);if(sprintf(run,"./Sully_%d",i-1)<9)return 1;system(run);return 0;}