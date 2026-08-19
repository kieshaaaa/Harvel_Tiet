#include <stdio.h>

int entry_point(float (*radians), float (*temptemp1)) {
float degrees;
float PI = 3.14f;
;
 degrees = (*radians) * (180.0f / PI);
;
{
(*temptemp1) = degrees ;
;
}
 return 0;
}
