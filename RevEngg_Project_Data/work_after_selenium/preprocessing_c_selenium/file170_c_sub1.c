#include <stdbool.h>
#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
int num;
 bool isPrime;
;
;
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 for (num = (*lower); num <= (*upper); num++) {
 if (num <= 1) continue;
 isPrime = true;
 for (i = 2; i * i <= num; i++) {
 if (num % i == 0) {
 isPrime = false;
 break;
 }
 }
 if (isPrime) {
{
(*temptemp3) = num ;
;
}
 }
 }
 return 0;
}
