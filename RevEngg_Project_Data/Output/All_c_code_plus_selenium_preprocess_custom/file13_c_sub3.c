#include <stdio.h>

int entry_point(int (*upperLimit), int (*temptemp1), int (*temptemp2)) {
int isPrime;
int div;
int num;
;
{
(*temptemp1) = (*upperLimit) ;
;
}
;
 for (num = 3; num < (*upperLimit); num += 2) {
 isPrime = 1;
 for (div = 3; div * div <= num; div += 2) {
 if (num % div == 0) {
 isPrime = 0;
 break;
 }
 }
 if (isPrime) {
{
(*temptemp2) = num ;
;
}
 }
 }
;
 return 0;
}
