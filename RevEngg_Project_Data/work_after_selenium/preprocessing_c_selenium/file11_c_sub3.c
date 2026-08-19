#include <stdio.h>

int entry_point(int (*number1), int (*number2), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int isPrime;
int count = 0;
int j;
int i;
;
 if((*number1) <= 2) {
;
 count = 1;
 (*number1) = 3;
 }
 for(i = (*number1); i <= (*number2); i += (i % 2 == 0) ? 1 : 2) {
 isPrime = 1;
 for(j = 3; j*j <= i; j += 2) {
 if(i % j == 0) {
 isPrime = 0;
 break;
 }
 }
 if(isPrime) {
{
(*temptemp1) = i ;
;
}
 count++;
 }
 }
{
(*temptemp2) = (*number1) ;
(*temptemp3) = (*number2) ;
(*temptemp4) = count ;
;
}
 return 0;
}
