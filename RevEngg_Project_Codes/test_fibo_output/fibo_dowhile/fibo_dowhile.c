#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int t1 = 0;
int t2 = 1;
int next;
int i = 1;
;
;
 do {
{
(*temptemp1) = t1 ;
;
}
 next = t1 + t2;
 t1 = t2;
 t2 = next;
 i++;
 } while (i <= (*n));
(*temptemp2) = next;
(*temptemp3) = t2;
 return 0;
}
