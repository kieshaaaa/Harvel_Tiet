#include <stdio.h>

int entry_point(int (*distance), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4))
{
float meter;
float feet;
float inches;
float centimeter;
;
 meter = (*distance) * 1000;
 feet = (*distance) * 3280.84;
 inches = (*distance) * 39370.1;
 centimeter = (*distance) * 100000;
{
(*temptemp1) = meter ;
;
}
{
(*temptemp2) = feet ;
;
}
{
(*temptemp3) = inches ;
;
}
{
(*temptemp4) = centimeter ;
;
}
 return 0;
}
