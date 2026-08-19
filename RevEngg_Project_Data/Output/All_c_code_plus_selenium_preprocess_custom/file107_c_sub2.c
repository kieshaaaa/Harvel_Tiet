#include <stdio.h>

int entry_point(float (*mm), float (*temptemp1), float (*temptemp2)) {
float in;
;
 in = (*mm) / 25.4;
 in = (int)(in * 100 + 0.5) / 100.0;
{
(*temptemp1) = (*mm) ;
(*temptemp2) = in ;
;
}
 return 0;
}
