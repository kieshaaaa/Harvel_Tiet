#include <math.h>
#include <stdio.h>

int entry_point(float (*radius), float (*height), float (*temptemp1), float (*temptemp2), float (*temptemp3)) {
float area;
float l;
;
 l = sqrt(pow((*radius), 2) + pow((*height), 2));
 area = 3.14159 * (*radius) * ((*radius) + l);
{
(*temptemp1) = (*radius) ;
(*temptemp2) = (*height) ;
;
}
{
(*temptemp3) = area ;
;
}
 return 0;
}
