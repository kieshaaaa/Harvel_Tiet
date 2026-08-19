#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int j;
int i;
int isPrime;
int count = 0;
;
 for (i = 2; i <= (*n); i++) {
 isPrime = 1;
 for (j = 2; j*j <= i; j++) {
 if (i % j == 0) {
 isPrime = 0;
 break;
 }
 }
 if (!isPrime) {
 count++;
 }
 }
{
(*temptemp1) = (*n) ;
(*temptemp2) = count ;
;
}
 return 0;
}
