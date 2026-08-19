#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int count = 0;
int nthCubic = 1;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 while (count < 3) {
 nthCubic *= (*n);
 count++;
 }
{
(*temptemp1) = (*n) ;
(*temptemp2) = nthCubic ;
;
}
 return 0;
}
