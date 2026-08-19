#include <stdio.h>

int entry_point(int (*x), int (*y), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
;
;
{
(*temptemp1) = (*x) ;
(*temptemp2) = (*y) ;
;
}
 (*x) = (*x) - (*y);
 (*y) = (*x) + (*y);
 (*x) = (*y) - (*x);
{
(*temptemp3) = (*x) ;
(*temptemp4) = (*y) ;
;
}
 return 0;
}
