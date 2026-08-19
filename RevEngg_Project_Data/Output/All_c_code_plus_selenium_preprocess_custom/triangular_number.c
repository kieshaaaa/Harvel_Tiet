#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int nthTriangular;
;
 if ((*n) <= 0) {
;
 return 1;
 }
 nthTriangular = (*n) * ((*n) + 1) / 2;
{
(*temptemp1) = (*n) ;
(*temptemp2) = nthTriangular ;
;
}
 return 0;
}
