#include <stdio.h>

int entry_point(float (*num), float (*temptemp1)) {
float sum = 0;
int count;
;
 for (count = 1; count <= 4; count++) {
 sum += (*num);
 }
 sum -= (*num);
{
(*temptemp1) = sum ;
;
}
 return 0;
}
