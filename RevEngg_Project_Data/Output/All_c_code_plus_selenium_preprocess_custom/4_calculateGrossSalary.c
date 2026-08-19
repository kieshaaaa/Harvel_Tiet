#include <stdio.h>

int entry_point(float (*bs), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5))
{
float gs;
float cv;
float da;
float hra;
;
 if((*bs) >= 5000)
 {
 da = 110 * (*bs) / 100;
 hra = 20 * (*bs) / 100;
 cv = 500;
 }
 else if((*bs) >= 3000 && (*bs) < 5000)
 {
 da = 100 * (*bs) / 100;
 hra = 15 * (*bs) / 100;
 cv = 400;
 }
 else if( (*bs) < 3000)
 {
 da = 90 * (*bs) / 100;
 hra = 10 * (*bs) / 100;
 cv = 300;
 }
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
