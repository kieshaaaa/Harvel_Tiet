#include <stdio.h>

int entry_point(int (*n), int (*temptemp1)) {
int i;
int factorial = 1;
;
 if ((*n) < 0) {
;
 } else {
 for(i = 1; i <= (*n); ++i) {
 factorial = factorial * i;
 }
{
(*temptemp1) = factorial ;
;
}
 }
 return 0;
}
