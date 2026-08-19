#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int factorial = 1;
;
 if ((*n) < 0) {
;
 } else {
int i = 1;
 do {
 factorial *= i;
 i++;
 } while (i <= (*n));
{
(*temptemp1) = (*n) ;
(*temptemp2) = factorial ;
;
}
 }
 return 0;
}
