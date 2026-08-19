#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int result;
;
 if ((*n) > 0) {
 result = (3 * (*n) * (*n) - (*n)) / 2;
{
(*temptemp1) = (*n) ;
;
}
{
(*temptemp2) = result ;
;
}
 } else {
;
 return 1;
 }
 return 0;
}
