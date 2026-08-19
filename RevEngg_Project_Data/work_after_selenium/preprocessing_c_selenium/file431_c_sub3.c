#include <stdio.h>

int entry_point(int (*n), int (*arr), int (*pos), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
 if ((*n) < 1 || (*n) > 100) {
;
 return 1;
 }
int i = 0;
{
(*temptemp1) = i + 1 ;
;
}
 }
{
(*temptemp2) = (*n) ;
;
 if ((*pos) < 1 || (*pos) > (*n)) {
;
 return 1;
 }
int i = (*pos) - 1;
 arr[i] = arr[i + 1];
 }
 (*n)--;
;
int i = 0;
{
(*temptemp3) = arr[i] ;
;
}
 }
;
 return 0;
}
