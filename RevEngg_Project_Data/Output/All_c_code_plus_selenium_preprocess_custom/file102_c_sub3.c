#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int prime = 1;
int i;
int limit;
;
 if ((*n) <= 1) prime = 0;
 limit = (*n) / 2;
 for (i = 2; i <= limit; i++) {
 if ((*n) % i == 0) {
 prime = 0;
 break;
 }
 }
 if (prime)
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
