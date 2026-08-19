#include <stdio.h>

int entry_point(float (*length), float (*width), float (*temptemp1)) {
;
;
float lengthSum = (*length) + (*width);
float perimeter = 2 * lengthSum;
;
{
(*temptemp1) = perimeter ;
;
}
 return 0;
}
