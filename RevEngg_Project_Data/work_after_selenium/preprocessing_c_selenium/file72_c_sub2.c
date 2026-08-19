#include <stdio.h>

int entry_point(int (*n), int (*temptemp1)) {
int dig;
int revNumber = 0;
;
 if ((*n) <= 0) {
;
 } else {
 do {
 dig = (*n) % 10;
 revNumber = revNumber * 10 + dig;
 (*n) /= 10;
 } while ((*n) > 0);
;
{
(*temptemp1) = revNumber ;
;
}
 }
 return 0;
}
