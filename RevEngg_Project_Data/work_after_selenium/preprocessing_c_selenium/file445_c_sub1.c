#include <stdio.h>
#include <math.h>

int entry_point(float (*principal), float (*rate), float (*time), float (*temptemp1)) {
float compoundInterest;
float amount;
;
;
;
);
);
float rateFraction = (*rate) / 100;
 float totalGrowth = pow((1 + rateFraction), (*time));
 amount = (*principal) * totalGrowth;
 compoundInterest = amount - (*principal);
{
(*temptemp1) = compoundInterest ;
;
}
 return 0;
}
