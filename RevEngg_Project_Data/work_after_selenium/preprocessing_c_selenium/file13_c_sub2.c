#include <stdio.h>

int entry_point(int (*upperLimit), int (*temptemp1), int (*temptemp2)) {
int div;
int num;
;
{
(*temptemp1) = (*upperLimit) ;
;
}
;
 for (num = 3; num < (*upperLimit); num += 2) {
 for (div = 3; div * div <= num; div += 2) {
 if (num % div == 0) {
 goto not_prime;
 }
 }
{
(*temptemp2) = num ;
;
}
 not_prime: ;
 }
;
 return 0;
}
