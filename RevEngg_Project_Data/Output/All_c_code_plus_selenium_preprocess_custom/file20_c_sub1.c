#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*temptemp1)) {
float circumference;
;
;
 float h = pow(((*a) - (*b)), 2) / pow(((*a) + (*b)), 2);
 circumference = 3.14159265358979323846 * ((*a) + (*b)) * (1 + (3 * h) / (10 + sqrt(4 - 3 * h)));
{
(*temptemp1) = circumference ;
;
}
 return 0;
}
