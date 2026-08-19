#include <stdio.h>

int entry_point(float (*side), int (*temptemp1), float (*temptemp2)) {
float perimeter = 0;
int i = 0;
 while (i < 4) {
{
(*temptemp1) = i + 1 ;
;
}
 perimeter += (*side);
 i++;
 }
{
(*temptemp2) = perimeter ;
;
}
 return 0;
}
