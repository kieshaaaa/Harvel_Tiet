#include <stdio.h>

int entry_point(float (*radius), float (*height), float (*temptemp1)) {
float volume;
;
;
 volume = (1.0/3) * 3.14159 * (*radius) * (*radius) * (*height);
;
{
(*temptemp1) = volume ;
;
}
 return 0;
}
