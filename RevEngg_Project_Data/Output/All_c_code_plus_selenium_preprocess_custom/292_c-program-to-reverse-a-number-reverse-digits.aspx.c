#include <stdio.h>

int entry_point(int (*n), int (*temptemp1))
{
int revNumber;
int dig;
;
 revNumber = 0;
 while ((*n) > 0) {
 dig = (*n) % 10;
 revNumber = (revNumber * 10) + dig;
 (*n) = (*n) / 10;
 }
{
(*temptemp1) = revNumber ;
;
}
 return 0;
}
