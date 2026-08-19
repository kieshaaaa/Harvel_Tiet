#include <stdio.h>
#include <math.h>

int isTriangular(int num) {
 if (num < 0) return 0;
 n = (-1 + sqrt(1 + 8 * num)) / 2;
 return n == (int)n;
}
int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int num;
;
;
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 for (num = (*lower); num <= (*upper); num++) {
 if (isTriangular(num)) {
{
(*temptemp3) = num ;
;
}
 }
 }
 return 0;
}
