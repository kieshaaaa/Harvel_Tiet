#include <math.h>
#include <stdio.h>

int entry_point(float (*s), float (*h), float (*temptemp1)) {
float V;
float A;
float pi = 3.14159;
float oneOverTanPiOver5;
float tanPart;
;
;
 tanPart = tan(pi / 5);
 oneOverTanPiOver5 = 1 / tanPart;
 A = (5 * (*s) * (*s) * oneOverTanPiOver5) / 4;
 V = A * (*h) / 3;
;
{
(*temptemp1) = V ;
;
}
 return 0;
}
