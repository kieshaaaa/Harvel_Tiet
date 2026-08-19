#include <stdio.h>
#include <math.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int num;
float n;
;
;
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 num = (*lower);
 while (num <= (*upper)) {
 n = (-1 + sqrtf(1 + 8 * num)) / 2;
 if (floorf(n) == n) {
{
(*temptemp3) = num ;
;
}
 }
 num++;
 }
 return 0;
}
