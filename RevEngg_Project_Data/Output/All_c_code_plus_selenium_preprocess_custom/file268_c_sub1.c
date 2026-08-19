#include <math.h>
#include <stdio.h>

int entry_point(float (*side), float (*height), float (*temptemp1)) {
float vol;
float areaBase;
float pi = 3.14159;
;
;
 areaBase = (5.0f * (*side) * (*side)) / (4.0f * tan(pi / 5.0f));
 vol = (areaBase * (*height)) / 3.0f;
;
{
(*temptemp1) = vol ;
;
}
 return 0;
}
