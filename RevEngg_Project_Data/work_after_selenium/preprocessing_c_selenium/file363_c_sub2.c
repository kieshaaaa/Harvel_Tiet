#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i = 0;
 while(i < 10) {
{
(*temptemp1) = i ;
;
}
 i++;
 }
 i = 0;
;
 while(i < 10) {
{
(*temptemp2) = i ;
(*temptemp3) = arr[i] ;
;
}
 i++;
 }
 return 0;
}
