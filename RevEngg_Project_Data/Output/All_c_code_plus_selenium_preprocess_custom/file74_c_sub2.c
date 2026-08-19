#include <stdio.h>

int entry_point(int (*m), int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
;
;
{
(*temptemp1) = (*m) ;
(*temptemp2) = (*n) ;
;
}
 (*m) = (*m) ^ (*n);
 (*n) = (*m) ^ (*n);
 (*m) = (*m) ^ (*n);
{
(*temptemp3) = (*m) ;
(*temptemp4) = (*n) ;
;
}
 return 0;
}
