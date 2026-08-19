#include <stdio.h>

int entry_point(float (*diagonalOne), float (*diagonalTwo), float (*temptemp1)) {
float result;
;
;
 result = (*diagonalOne) * (*diagonalTwo);
 result = result / 2;
;
{
(*temptemp1) = result ;
;
}
 return 0;
}
