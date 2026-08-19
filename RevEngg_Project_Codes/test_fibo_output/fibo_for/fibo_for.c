#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int t1 = 0;
int t2 = 1;
int i;
int next;
;
 for (i = 1; i <= (*n); ++i) {
{
(*temptemp1) = t1 ;
;
}
 next = t1 + t2;
 t1 = t2;
 t2 = next;
 }
(*temptemp2) = t2;
(*temptemp3) = next;
 return 0;
}
