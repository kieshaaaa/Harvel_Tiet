#include <stdio.h>
#include <stdbool.h>

bool isPrime(int num) {
 if (num <= 1) {
 return false;
 }
 for (int i = 2; i * i <= num; i++) {
 if (num % i == 0) {
 return false;
 }
 }
 return true;
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
 if (isPrime(num)) {
{
(*temptemp3) = num ;
;
}
 }
 }
 return 0;
}
