#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int nthHexagonal;
;
 nthHexagonal = ((*n) > 0) ? 2 * (*n) * (*n) - (*n) : -1;
 if (nthHexagonal == -1) {
;
 return 1;
 } else {
{
(*temptemp1) = (*n) ;
(*temptemp2) = nthHexagonal ;
;
}
 }
 return 0;
}
