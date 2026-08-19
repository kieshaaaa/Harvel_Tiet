#include <stdio.h>

int entry_point(float (*hour), float (*minute), float (*second), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
 if((*hour) >= 0 && (*hour) <= 23 && (*minute) >= 0 && (*minute) <= 59 && (*second) >= 0 && (*second) <= 59) {
{
(*temptemp1) = (int)(*hour) ;
(*temptemp2) = (int)(*minute) ;
(*temptemp3) = (int)(*second) ;
;
}
 } else {
;
 }
 return 0;
}
