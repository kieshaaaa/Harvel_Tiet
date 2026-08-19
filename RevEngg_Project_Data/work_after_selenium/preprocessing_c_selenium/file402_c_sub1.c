#include <stdio.h>
#include <math.h>

int entry_point(int (*limit), int (*temptemp1), int (*temptemp2)) {
float cubeRoot;
int count;
;
 cubeRoot = pow((*limit), 1.0/3.0);
 count = (int)cubeRoot;
;
{
(*temptemp1) = (*limit) ;
(*temptemp2) = count ;
;
}
 return 0;
}
