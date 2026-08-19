#include <stdio.h>

int entry_point(float (*outerRadius), float (*innerRadius), float (*temptemp1)) {
float area;
float piValue = 3.14159;
float innerSquare;
float outerSquare;
;
;
 outerSquare = (*outerRadius) * (*outerRadius);
 innerSquare = (*innerRadius) * (*innerRadius);
 area = piValue * (outerSquare - innerSquare);
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
