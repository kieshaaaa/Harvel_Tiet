#include <stdio.h>

int entry_point(int (*seconds), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int remainder;
int minutes;
int hours;
;
 hours = (*seconds) / 3600;
 remainder = (*seconds) % 3600;
 minutes = remainder / 60;
 (*seconds) = remainder % 60;
{
(*temptemp1) = hours ;
(*temptemp2) = minutes ;
(*temptemp3) = (*seconds) ;
;
}
 return 0;
}
