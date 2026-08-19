#include <stdio.h>

int entry_point(int (*octal), int (*temptemp1)) {
int base = 1;
int decimal = 0;
;
 for (; (*octal); (*octal) /= 10) {
 decimal += ((*octal) % 10) * base;
 base *= 8;
 }
{
(*temptemp1) = decimal ;
;
}
 return 0;
}
