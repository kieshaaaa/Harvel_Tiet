#include <stdio.h>

int entry_point(int (*x), int (*y), int (*temptemp1), int (*temptemp2), float (*temptemp3), int (*temptemp4), int (*temptemp5), float (*temptemp6)) {
float average;
float sum;
;
;
 sum = (*x) + (*y);
 average = sum / 2;
{
(*temptemp1) = (*x) ;
(*temptemp2) = (*y) ;
(*temptemp3) = sum ;
;
}
{
(*temptemp4) = (*x) ;
(*temptemp5) = (*y) ;
(*temptemp6) = average ;
;
}
 return 0;
}
