#include <stdio.h>

int entry_point(int (*decimal), char (*temptemp1)) {
int remainder;
char octal[30];
int index = 0;
;
 while ((*decimal) > 0) {
 remainder = (*decimal) % 8;
 octal[index++] = '0' + remainder;
 (*decimal) /= 8;
 }
;
int i = index - 1;
{
(*temptemp1) = octal[i] ;
;
}
 }
 return 0;
}
