#include <stdio.h>

int entry_point(int (*n), int (*temptemp1)) {
int dig;
int revNumber = 0;
;
 for (; (*n) > 0; (*n) /= 10) {
 dig = (*n) % 10;
 revNumber = revNumber * 10 + dig;
 }
;
{
(*temptemp1) = revNumber ;
;
}
 return 0;
}
