#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int nthPentagonal;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 nthPentagonal = (*n) * (3 * (*n) - 1) / 2;
{
(*temptemp1) = (*n) ;
(*temptemp2) = nthPentagonal ;
;
}
 return 0;
}
