#include <stdio.h>

int entry_point(int (*decimal), int (*temptemp1)) {
int index = 0;
int temp;
int octal[30];
;
 while ((*decimal) > 0) {
 temp = (*decimal) % 8;
 octal[index++] = temp;
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
