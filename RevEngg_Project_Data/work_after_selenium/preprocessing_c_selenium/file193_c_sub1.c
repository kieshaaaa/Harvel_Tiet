#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5), int (*temptemp6)) {
int values[3];
 values[0] = 100;
 values[1] = 200;
 values[2] = 300;
{
(*temptemp1) = values[0] ;
(*temptemp2) = values[1] ;
(*temptemp3) = values[2] ;
;
}
 values[0] += 10;
 values[1] += 10;
 values[2] += 10;
;
{
(*temptemp4) = values[0] ;
(*temptemp5) = values[1] ;
(*temptemp6) = values[2] ;
;
}
 return 0;
}
