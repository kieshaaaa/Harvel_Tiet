#include <stdio.h>

int entry_point(float (*atm), float (*temptemp1)) {
;
float mmHg = (*atm) * 760.0;
{
(*temptemp1) = mmHg ;
;
}
 return 0;
}
