#include<stdio.h>

int entry_point(float (*radius), float (*temptemp1), float (*temptemp2)) {
float circum;
float area;
;
 area = 3.142 * (*radius) * (*radius);
 circum = 2 * 3.142 * (*radius);
;
float areaResult = area;
{
(*temptemp1) = areaResult ;
;
}
;
float circumResult = circum;
{
(*temptemp2) = circumResult ;
;
}
 return 0;
}
