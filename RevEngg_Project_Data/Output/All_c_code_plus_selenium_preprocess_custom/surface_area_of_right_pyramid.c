#include <stdio.h>
#include <math.h>

int entry_point(float (*sideLength), float (*slantHeight), float (*temptemp1)) {
float surfaceArea;
float lateralArea;
float baseArea;
;
;
 baseArea = (*sideLength) * (*sideLength);
 lateralArea = 4 * ((*sideLength) * (*slantHeight)) / 2;
 surfaceArea = baseArea + lateralArea;
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
