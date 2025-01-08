#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#define CURFILE strrchr("/"__FILE__,'/')+1
#define COMPL "clang -Wall -Wextra -Werror %s -o Sully_%d"
#define CODE "#include <string.h>%2$c#include <stdio.h>%2$c#include <stdlib.h>%2$c#define CURFILE strrchr(%3$c/%3$c__FILE__,'/')+1%2$c#define COMPL %3$cclang -Wall -Wextra -Werror %%s -o Sully_%%d%3$c%2$c#define CODE %3$c%1$s%3$c%2$cint i=%4$d;%2$cint main(){int diff=strcmp(CURFILE, %3$cSully.c%3$c)!=0;if(i-diff<0)return 0;char file[10];if(sprintf(file, %3$cSully_%%d.c%3$c, i-diff) < 9)return 1;FILE *f = fopen(file, %3$cw%3$c);if(!f)return 1;fprintf(f,CODE,CODE,10,34,i-diff);fclose(f);char run[50];if(sprintf(run,COMPL,file,i-diff)<45)return 1;system(run);if(sprintf(run,%3$c./Sully_%%d%3$c,i-diff)<9)return 1;system(run);return 0;}"
int i=5;
int main(){int diff=strcmp(CURFILE, "Sully.c")!=0;if(i-diff<0)return 0;char file[10];if(sprintf(file, "Sully_%d.c", i-diff) < 9)return 1;FILE *f = fopen(file, "w");if(!f)return 1;fprintf(f,CODE,CODE,10,34,i-diff);fclose(f);char run[50];if(sprintf(run,COMPL,file,i-diff)<45)return 1;system(run);if(sprintf(run,"./Sully_%d",i-diff)<9)return 1;system(run);return 0;}