#include <stdio.h>

int entry_point(float (*diag1), float (*diag2), float (*temptemp1)) {
float area;
float product;
;
;
 product = (*diag1) * (*diag2);
 area = product / 2;
;
{
(*temptemp1) = area ;
;
}
 return 0;
}
