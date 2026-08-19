#include <stdio.h>

int entry_point(float (*aReal), float (*aImag), float (*bReal), float (*bImag), float (*temptemp1), float (*temptemp2)) {
float sumImag;
float sumReal;
;
;
 sumReal = (*aReal) + (*bReal);
 sumImag = (*aImag) + (*bImag);
{
(*temptemp1) = sumReal ;
(*temptemp2) = sumImag ;
;
}
 return 0;
}
