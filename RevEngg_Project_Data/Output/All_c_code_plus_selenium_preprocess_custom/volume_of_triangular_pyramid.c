#include <stdio.h>
#include <math.h>

int entry_point(float (*a), float (*h), float (*temptemp1)) {
float volume;
float baseArea;
;
;
 baseArea = (sqrt(3) / 4) * (*a) * (*a);
 volume = (baseArea * (*h)) / 3;
{
(*temptemp1) = volume ;
;
}
 return 0;
}
