#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int isPrime = 1;
;
 if ((*num) < 2) {
;
 } else {
int i = 2;
 if ((*num) % i == 0) {
 isPrime = 0;
 break;
 }
 }
 if (isPrime)
{
(*temptemp1) = (*num) ;
;
}
 else
{
(*temptemp2) = (*num) ;
;
}
 }
;
 return 0;
}
