#include <stdio.h>

int entry_point(float (*bs), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
float gs;
float cv;
float da;
float hra;
;
 da = ((*bs) >= 5000) ? 1.1 * (*bs) : (((*bs) >= 3000) ? (*bs) : 0.9 * (*bs));
 hra = ((*bs) >= 5000) ? 0.2 * (*bs) : (((*bs) >= 3000) ? 0.15 * (*bs) : 0.1 * (*bs));
 cv = ((*bs) >= 5000) ? 500 : (((*bs) >= 3000) ? 400 : 300);
 gs = (*bs) + da + hra + cv;
{
(*temptemp1) = (*bs) ;
;
}
{
(*temptemp2) = da ;
;
}
{
(*temptemp3) = hra ;
;
}
{
(*temptemp4) = cv ;
;
}
{
(*temptemp5) = gs ;
;
}
 return 0;
}
