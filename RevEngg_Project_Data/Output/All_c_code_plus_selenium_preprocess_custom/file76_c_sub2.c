#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), float (*temptemp2), int (*temptemp3), float (*temptemp4)) {
float fact = 1;
;
int i = 1;
 while (i <= (*n)) {
 fact *= i;
 i++;
 }
float factGeneral = fact;
float factScientific = fact;
{
(*temptemp1) = (*n) ;
(*temptemp2) = factGeneral ;
;
}
{
(*temptemp3) = (*n) ;
(*temptemp4) = factScientific ;
;
}
 return 0;
}
