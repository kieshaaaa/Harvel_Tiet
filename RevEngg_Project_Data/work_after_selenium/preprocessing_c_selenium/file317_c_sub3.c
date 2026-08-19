#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
int product = 1;
int sum = 0;
;
 for(i = 0; i < 10; i++) {
{
(*temptemp1) = i ;
;
}
 sum += arr[i];
 product *= arr[i];
 }
{
(*temptemp2) = sum ;
;
}
{
(*temptemp3) = product ;
;
}
 return 0;
}
