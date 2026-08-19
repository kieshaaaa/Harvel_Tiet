#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5), float (*temptemp6)) {
float temp;
;
;
;
;
{
(*temptemp1) = (*a) ;
(*temptemp2) = (*b) ;
(*temptemp3) = (*c) ;
;
}
 temp = (*a);
 (*a) = (*b);
 (*b) = (*c);
 (*c) = temp;
;
{
(*temptemp4) = (*a) ;
(*temptemp5) = (*b) ;
(*temptemp6) = (*c) ;
;
}
 return 0;
}
