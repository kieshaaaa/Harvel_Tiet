#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int mul = 0;
int loop;
;
;
 if ((*b) < 0) {
 (*b) = -(*b);
 (*a) = -(*a);
 }
 for (loop = 1; loop <= (*b); loop++) {
 mul += (*a);
 }
{
(*temptemp1) = (*a) ;
(*temptemp2) = (*b) ;
(*temptemp3) = mul ;
;
}
 return 0;
}
