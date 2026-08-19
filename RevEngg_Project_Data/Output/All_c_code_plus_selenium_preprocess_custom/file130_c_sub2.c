#include <stdio.h>

int entry_point(int (*octal), int (*temptemp1)) {
int base = 1;
int decimal = 0;
int reverse = 0;
;
 while ((*octal) != 0) {
 reverse = reverse * 10 + ((*octal) % 10);
 (*octal) /= 10;
 }
 while (reverse != 0) {
 decimal += (reverse % 10) * base;
 base *= 8;
 reverse /= 10;
 }
{
(*temptemp1) = decimal ;
;
}
 return 0;
}
