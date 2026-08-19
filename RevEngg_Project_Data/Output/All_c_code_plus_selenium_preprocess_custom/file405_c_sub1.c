#include <math.h>
#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
;
;
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 for (i = (*lower); i <= (*upper); i++) {
int remainder;
int n = 0;
int sum = 0;
int temp = i;
 while (temp > 0) {
 temp /= 10;
 n++;
 }
 temp = i;
 while (temp > 0) {
 remainder = temp % 10;
 sum += pow(remainder, n);
 temp /= 10;
 }
 if (sum == i) {
{
(*temptemp3) = i ;
;
}
 }
 }
 return 0;
}
