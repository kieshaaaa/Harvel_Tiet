#include <stdio.h>

int entry_point(float (*sideLength), float (*temptemp1)) {
float volume;
float square;
;
 square = (*sideLength) * (*sideLength);
 volume = square * (*sideLength);
;
{
(*temptemp1) = volume ;
;
}
 return 0;
}
