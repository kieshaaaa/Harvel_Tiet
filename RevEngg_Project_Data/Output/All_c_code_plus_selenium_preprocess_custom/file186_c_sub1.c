#include <stdio.h>

int entry_point(float (*sides), int (*temptemp1), float (*temptemp2)) {
float perimeter = 0;
int i;
 for (i = 0; i < 4; i++) {
{
(*temptemp1) = i+1 ;
;
}
 perimeter += sides[i];
 }
{
(*temptemp2) = perimeter ;
;
}
 return 0;
}
