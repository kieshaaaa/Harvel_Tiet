#include <stdio.h>

int entry_point(float (*l), float (*w), float (*h), float (*temptemp1)) {
;
float area = (*l) * (*w);
float vol = area * (*h) / 3.0f;
;
{
(*temptemp1) = vol ;
;
}
 return 0;
}
