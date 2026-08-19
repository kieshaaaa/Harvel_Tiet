#include <stdio.h>
#include <math.h>

int entry_point(float (*r), float (*h), float (*temptemp1)) {
float a;
float s;
;
;
 s = sqrt((*r) * (*r) + (*h) * (*h));
 a = 3.14159 * (*r) * ((*r) + s);
;
{
(*temptemp1) = a ;
;
}
 return 0;
}
