#include <stdio.h>
#include <math.h>

int entry_point(float (*radius), float (*height), float (*temptemp1)) {
float baseArea;
float volume;
;
 baseArea = 3.14159 * pow((*radius), 2);
 volume = baseArea * (*height) / 3;
;
{
(*temptemp1) = volume ;
;
}
 return 0;
}
