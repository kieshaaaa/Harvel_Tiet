#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int nthCubic;
int temp2;
int temp1;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 temp1 = (*n) * (*n);
 temp2 = temp1 * (*n);
 nthCubic = temp2;
{
(*temptemp1) = (*n) ;
(*temptemp2) = nthCubic ;
;
}
 return 0;
}
