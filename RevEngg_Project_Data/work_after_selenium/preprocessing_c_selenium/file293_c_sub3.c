#include <stdio.h>

int entry_point(float (*inches), char (*choice), float (*temptemp1)) {
float feet;
 do {
;
 feet = (*inches) / 12.0;
;
{
(*temptemp1) = feet ;
;
}
;
 } while((*choice) == 'y' || (*choice) == 'Y');
 return 0;
}
