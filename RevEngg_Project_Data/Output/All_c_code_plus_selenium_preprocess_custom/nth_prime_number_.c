#include <stdio.h>

int entry_point(int (*n), int (*temptemp1)) {
int count = 0;
int i;
;
int num = 2;
int nthPrime = 2;
 while (count < (*n)) {
int isPrime = 1;
 for (i = 2; i * i <= num; i++) {
 if (num % i == 0) {
 isPrime = 0;
 break;
 }
 }
 if (isPrime) {
 nthPrime = num;
 count = count + 1;
 }
 num = num + 1;
 }
{
(*temptemp1) = nthPrime ;
;
}
 return 0;
}
