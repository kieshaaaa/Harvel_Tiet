#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
float nthTriangular;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 nthTriangular = 0.5f * (*n) * ((*n) + 1);
{
(*temptemp1) = (*n) ;
(*temptemp2) = (int)nthTriangular ;
;
}
 return 0;
}
