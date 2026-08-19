#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int cnt = 0;
;
 for (; (*num) > 0; (*num) /= 10) {
 cnt++;
 }
;
{
(*temptemp1) = cnt ;
;
}
;
{
(*temptemp2) = (*num) ;
;
}
;
 return 0;
}
