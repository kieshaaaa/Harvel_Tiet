#include <stdio.h>

int entry_point(char (*option), float (*temperatureF), float (*temperatureC), float (*temptemp1), float (*temptemp2)) {
;
;
;
 if ((*option) == 'F' || (*option) == 'f') {
;
 (*temperatureC) = ((*temperatureF) - 32) * 5.0 / 9.0;
{
(*temptemp1) = (*temperatureC) ;
;
}
 } else if ((*option) == 'C' || (*option) == 'c') {
;
 (*temperatureF) = ((*temperatureC) * 9.0 / 5.0) + 32;
{
(*temptemp2) = (*temperatureF) ;
;
}
 } else {
;
 }
 return 0;
}
