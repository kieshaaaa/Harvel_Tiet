#include <stdio.h>

int entry_point(float (*radius), float (*height), float (*temptemp1)) {
float totalSurfaceArea;
float lateralSurfaceArea;
float baseArea;
;
;
 baseArea = 3.14159 * (*radius) * (*radius);
 lateralSurfaceArea = 2 * 3.14159 * (*radius) * (*height);
 totalSurfaceArea = 2 * baseArea + lateralSurfaceArea;
{
(*temptemp1) = totalSurfaceArea ;
;
}
 return 0;
}
