#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int sum;
int diff;
;
;
 sum = (*a) + (*b);
 diff = sum - 2 * ((*a) > (*b) ? (*a) : (*b));
;
{
(*temptemp1) = (*a) ;
;
}
;
{
(*temptemp2) = (*b) ;
;
}
;
{
(*temptemp3) = diff < 0 ? -diff : diff ;
;
}
 return 0;
}
