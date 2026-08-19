#include <stdio.h>

int entry_point(float (*pressureInPascals), float (*temptemp1)) {
float pressureInBar;
;
;
 pressureInBar = (*pressureInPascals) / 100000;
{
(*temptemp1) = pressureInBar ;
;
}
 return 0;
}
