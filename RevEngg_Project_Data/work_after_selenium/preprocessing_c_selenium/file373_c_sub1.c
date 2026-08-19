#include <stdio.h>

int entry_point(float (*outerRadius), float (*innerRadius), float (*temptemp1)) {
float area;
float innerArea;
float outerArea;
float pi;
 pi = 3.14159;
;
;
 outerArea = pi * (*outerRadius) * (*outerRadius);
 innerArea = pi * (*innerRadius) * (*innerRadius);
 area = outerArea - innerArea;
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
