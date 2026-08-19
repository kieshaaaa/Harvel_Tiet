#include <stdio.h>

int entry_point(int (*inputSeconds), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int seconds;
int minutes;
int hours;
;
 hours = (*inputSeconds) / 3600;
 (*inputSeconds) = (*inputSeconds) % 3600;
 minutes = (*inputSeconds) / 60;
 seconds = (*inputSeconds) % 60;
{
(*temptemp1) = hours ;
(*temptemp2) = minutes ;
(*temptemp3) = seconds ;
;
}
 return 0;
}
