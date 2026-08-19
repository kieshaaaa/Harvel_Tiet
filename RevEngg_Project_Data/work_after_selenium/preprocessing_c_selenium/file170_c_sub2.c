#include <stdio.h>
#include <stdbool.h>

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
 num = (*lower);
 while (num <= (*upper)) {
 if (num > 1) {
 isPrime = true;
 i = 2;
 while (i * i <= num) {
 if (num % i == 0) {
 isPrime = false;
 break;
 }
 i++;
 }
 if (isPrime) {
{
(*temptemp3) = num ;
;
}
 }
 }
 num++;
 }
 return 0;
}
