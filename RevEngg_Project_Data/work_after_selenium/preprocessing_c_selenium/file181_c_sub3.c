#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
;
 if ((*n) > 0) {
int pentagonal = (3 * (*n) - 1) * (*n) / 2;
{
(*temptemp1) = (*n) ;
;
}
{
(*temptemp2) = pentagonal ;
;
}
 } else {
;
 return 1;
 }
 return 0;
}
