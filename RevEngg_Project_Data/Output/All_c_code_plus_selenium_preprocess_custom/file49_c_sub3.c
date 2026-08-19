#include <stdio.h>

int entry_point(float (*temptemp1), float (*temptemp2)) {
float celsius = 36.6f;
float fahrenheit;
 fahrenheit = (celsius * 9 / 5) + 32;
{
(*temptemp1) = celsius ;
;
}
{
(*temptemp2) = fahrenheit ;
;
}
 return 0;
}
