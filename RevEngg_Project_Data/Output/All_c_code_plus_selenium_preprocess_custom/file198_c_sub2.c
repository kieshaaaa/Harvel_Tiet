#include <stdio.h>

int entry_point(int (*hour), int (*minute), int (*second), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
;
;
 if((*hour) >= 0 && (*hour) <= 23 && (*minute) >= 0 && (*minute) <= 59 && (*second) >= 0 && (*second) <= 59) {
{
(*temptemp1) = (*hour) ;
(*temptemp2) = (*minute) ;
(*temptemp3) = (*second) ;
;
}
 } else {
;
 }
 return 0;
}
