#include <stdio.h>

int entry_point(float (*rad), float (*ht), float (*temptemp1)) {
float cylVol;
float areaOfCircle;
;
;
 areaOfCircle = 3.14159 * (*rad) * (*rad);
 cylVol = areaOfCircle * (*ht);
;
{
(*temptemp1) = cylVol ;
;
}
 return 0;
}
