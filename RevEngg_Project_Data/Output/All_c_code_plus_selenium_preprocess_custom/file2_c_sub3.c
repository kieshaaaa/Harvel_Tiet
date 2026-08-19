#include <stdio.h>

int entry_point(float (*bs), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5)) {
float gs;
float cv;
float da;
float hra;
;
 if((*bs) >= 5000) {
 da = 1.1 * (*bs);
 hra = 0.2 * (*bs);
 cv = 500;
 } else {
 if((*bs) >= 3000) {
 da = (*bs);
 hra = 0.15 * (*bs);
 cv = 400;
 } else {
 da = 0.9 * (*bs);
 hra = 0.1 * (*bs);
 cv = 300;
 }
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
