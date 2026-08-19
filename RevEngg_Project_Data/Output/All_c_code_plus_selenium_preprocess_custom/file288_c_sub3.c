#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
;
 if ((*n) < 0) {
;
 exit(0);
 }
int sum = (*n) * ((*n) + 1) / 2;
{
(*temptemp1) = (*n) ;
(*temptemp2) = sum ;
;
}
;
 return 0;
}
