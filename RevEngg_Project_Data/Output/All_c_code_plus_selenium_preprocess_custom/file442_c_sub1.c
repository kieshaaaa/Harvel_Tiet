#include <stdio.h>

int entry_point(int (*choice), float (*temperature), float (*temptemp1), float (*temptemp2)) {
float convertedTemperature;
;
;
;
 if ((*choice) == 1) {
;
 convertedTemperature = ((*temperature) - 32) / 1.8;
{
(*temptemp1) = convertedTemperature ;
;
}
 } else if ((*choice) == 2) {
;
 convertedTemperature = ((*temperature) * 1.8) + 32;
{
(*temptemp2) = convertedTemperature ;
;
}
 } else {
;
 }
 return 0;
}
