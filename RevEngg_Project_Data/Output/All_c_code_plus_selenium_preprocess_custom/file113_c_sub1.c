#include <stdio.h>

int entry_point(float (*radius), float (*height), float (*temptemp1)) {
float totalSurfaceArea;
float sideArea;
float circleArea;
;
;
 circleArea = 3.14159 * (*radius) * (*radius);
 sideArea = 2 * 3.14159 * (*radius) * (*height);
 totalSurfaceArea = 2 * circleArea + sideArea;
{
(*temptemp1) = totalSurfaceArea ;
;
}
 return 0;
}
