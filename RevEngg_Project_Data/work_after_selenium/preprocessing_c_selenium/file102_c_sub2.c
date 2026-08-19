#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int isPrime = 1;
int i;
;
 if ((*n) == 2) isPrime = 1;
 else if ((*n) < 2 || (*n) % 2 == 0) isPrime = 0;
 else {
 for (i = 3; i < (*n) / 2; i += 2) {
 if ((*n) % i == 0) {
 isPrime = 0;
 break;
 }
 }
 }
 if (isPrime)
{
(*temptemp1) = (*n) ;
;
}
 else
{
(*temptemp2) = (*n) ;
;
}
 return 0;
}
