#include <stdio.h>

int entry_point(float (*length), float (*width), float (*height), float (*temptemp1)) {
float surfaceArea;
float area3;
float area2;
float area1;
;
;
;
 area1 = (*length) * (*width);
 area2 = (*width) * (*height);
 area3 = (*height) * (*length);
 surfaceArea = 2 * (area1 + area2 + area3);
{
(*temptemp1) = surfaceArea ;
;
}
 return 0;
}
