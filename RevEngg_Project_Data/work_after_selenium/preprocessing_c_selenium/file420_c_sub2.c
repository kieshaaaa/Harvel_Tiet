#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
;
 if (((*num) & 1) == 0) {
{
(*temptemp1) = (*num) ;
;
}
{
(*temptemp2) = (*num) + 2 ;
;
}
 } else {
{
(*temptemp3) = (*num) ;
;
}
{
(*temptemp4) = (*num) + 2 ;
;
}
 }
 return 0;
}
