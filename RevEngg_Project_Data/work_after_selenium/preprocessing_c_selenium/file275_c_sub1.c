#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int i;
int sum = 0;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 for (i = 1; i <= (*n); i++) {
 sum += i;
 }
{
(*temptemp1) = (*n) ;
(*temptemp2) = sum ;
;
}
 return 0;
}
