#include <math.h>
#include <stdio.h>

int entry_point(float (*principal), float (*rate), float (*time), float (*temptemp1)) {
float ci;
float exponent;
float base;
;
;
;
 (*rate) = (*rate) / 100;
 base = 1 + (*rate);
 exponent = pow(base, (*time));
 ci = (*principal) * (exponent - 1);
{
(*temptemp1) = ci ;
;
}
 return 0;
}
