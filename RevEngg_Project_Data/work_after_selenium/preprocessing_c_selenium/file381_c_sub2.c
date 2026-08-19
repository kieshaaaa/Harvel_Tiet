#include <stdio.h>

int entry_point(int (*number), char (*temptemp1)) {
int index = 0;
char hex[32];
;
 while ((*number) != 0) {
int temp = 0;
 temp = (*number) % 16;
 if(temp < 10) {
 hex[index] = temp + 48;
 } else {
 hex[index] = temp + 55;
 }
 (*number) = (*number) / 16;
 index++;
 }
;
int i = index - 1;
{
(*temptemp1) = hex[i] ;
;
}
 }
 return 0;
}
