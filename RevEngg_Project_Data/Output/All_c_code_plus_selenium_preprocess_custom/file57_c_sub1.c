#include <math.h>
#include <stdio.h>

int entry_point(int (*sides), float (*sideLength), float (*temptemp1)) {
float tanValue;
float polygonArea;
;
;
 tanValue = tan(M_PI / (*sides));
 polygonArea = ((*sides) * (*sideLength) * (*sideLength)) / (4 * tanValue);
;
{
(*temptemp1) = polygonArea ;
;
}
 return 0;
}
