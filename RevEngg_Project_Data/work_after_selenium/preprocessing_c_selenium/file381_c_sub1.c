#include <stdio.h>

int entry_point(int (*number), char (*temptemp1)) {
int index = 0;
char hex[32];
char hexDigits[] = "0123456789ABCDEF";
;
 while ((*number) > 0) {
int remainder = (*number) % 16;
 hex[index] = hexDigits[remainder];
 (*number) /= 16;
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
