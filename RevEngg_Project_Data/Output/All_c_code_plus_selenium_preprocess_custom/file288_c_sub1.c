#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int sum = 0;
;
 if ((*n) < 0) {
;
 exit(0);
 }
int i = 1;
 do {
 sum += i;
 i++;
 } while (i <= (*n));
{
(*temptemp1) = (*n) ;
(*temptemp2) = sum ;
;
}
;
 return 0;
}
