#include <stdio.h>

int entry_point(float (*r), float (*h), float (*temptemp1)) {
float area;
float v;
;
 area = 3.14159 * (*r) * (*r);
 v = area * (*h) / 3;
;
{
(*temptemp1) = v ;
;
}
 return 0;
}
