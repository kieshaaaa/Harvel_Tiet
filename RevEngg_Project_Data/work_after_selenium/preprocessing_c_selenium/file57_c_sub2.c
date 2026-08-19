#include <stdio.h>
#include <math.h>

int entry_point(int (*sides), float (*sideLength), float (*temptemp1)) {
float piOverN;
float area;
;
;
 piOverN = M_PI / (*sides);
 area = ((*sides) * (*sideLength) * (*sideLength)) / (4 * tan(piOverN));
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
