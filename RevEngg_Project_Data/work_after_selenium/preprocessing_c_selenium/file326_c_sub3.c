#include <math.h>
#include <stdio.h>

int entry_point(float (*radius), float (*temptemp1)) {
float temp;
float volume;
;
 temp = pow((*radius), 3);
 volume = temp * M_PI * 4.0f / 3.0f;
;
{
(*temptemp1) = volume ;
;
}
 return 0;
}
