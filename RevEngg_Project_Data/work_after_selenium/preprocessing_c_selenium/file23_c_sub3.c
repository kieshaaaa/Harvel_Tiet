#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i = 1;
int triangularNumber = 0;
;
;
{
(*temptemp1) = (*lower) ;
(*temptemp2) = (*upper) ;
;
}
 while (triangularNumber <= (*upper)) {
 triangularNumber = i * (i + 1) / 2;
 if (triangularNumber >= (*lower) && triangularNumber <= (*upper)) {
{
(*temptemp3) = triangularNumber ;
;
}
 }
 i++;
 }
 return 0;
}
