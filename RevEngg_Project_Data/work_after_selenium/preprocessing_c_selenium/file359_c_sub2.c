#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1), int (*temptemp2), float (*temptemp3)) {
float rem;
;
;
 rem = (*b) - ((*b) / (*a)) * (*a);
 rem = (*a) - rem;
{
(*temptemp1) = (*a) ;
(*temptemp2) = (*b) ;
(*temptemp3) = rem ;
;
}
 return 0;
}
