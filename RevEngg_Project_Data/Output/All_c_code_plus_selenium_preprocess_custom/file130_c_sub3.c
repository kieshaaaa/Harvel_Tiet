#include <stdio.h>

int entry_point(int (*octal), int (*temptemp1)) {
int last_digit;
int base = 1;
int decimal = 0;
;
 while ((*octal) != 0) {
 last_digit = (*octal) % 10;
 (*octal) /= 10;
 decimal += last_digit * base;
 base *= 8;
 }
{
(*temptemp1) = decimal ;
;
}
 return 0;
}
