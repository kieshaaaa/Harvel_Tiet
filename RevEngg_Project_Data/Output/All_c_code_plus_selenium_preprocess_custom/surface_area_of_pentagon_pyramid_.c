#include <stdio.h>
#include <math.h>

int entry_point(float (*sideLength), float (*slantHeight), float (*temptemp1)) {
float surfaceArea;
float lateralArea;
float baseArea;
float pi = 3.14159;
;
;
 baseArea = (5 * (*sideLength) * (*sideLength)) / (4 * tan(pi / 5));
 lateralArea = (5 * (*sideLength) * (*slantHeight)) / 2;
 surfaceArea = baseArea + lateralArea;
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
