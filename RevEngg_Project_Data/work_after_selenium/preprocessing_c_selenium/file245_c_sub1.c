#include <math.h>
#include <stdio.h>

int entry_point(float (*principal), float (*rate), float (*year), float (*temptemp1)) {
float ci;
float amount;
;
;
;
 amount = (*principal) * pow((1 + (*rate) / 100), (*year));
 ci = amount - (*principal);
{
(*temptemp1) = ci ;
;
}
 return 0;
}
