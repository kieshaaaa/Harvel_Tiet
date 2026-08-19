#include <stdio.h>
#include <stdlib.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int sum = 0;
;
 if ((*n) < 0) {
;
 exit(0);
 }
int i = 1;
 while (i <= (*n)) {
 sum += i;
 i++;
 }
{
(*temptemp1) = (*n) ;
(*temptemp2) = sum ;
;
}
;
 return 0;
}
