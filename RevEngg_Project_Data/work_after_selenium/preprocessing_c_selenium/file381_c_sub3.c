#include <stdio.h>

int entry_point(int (*number), char (*temptemp1)) {
int index = 0;
char hex[32];
 char digits[] = {'0', '1', '2', '3', '4', '5', '6', '7',
 '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
;
 while ((*number) != 0) {
int rem = (*number) % 16;
 hex[index++] = digits[rem];
 (*number) /= 16;
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
