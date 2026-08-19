#include <stdio.h>

int entry_point(int (*deg), float coefs[(*deg) - j], float (*valX), int (*temptemp1), float (*temptemp2)) {
float polyVal = 0;
float coefs[100];
int j;
;
 for (j = (*deg); j >= 0; j--) {
{
(*temptemp1) = j ;
;
}
 }
;
 for (j = 0; j < (*deg); j++) {
 polyVal = (polyVal + coefs[j]) * (*valX);
 }
 polyVal += coefs[(*deg)];
{
(*temptemp2) = polyVal ;
;
}
 return 0;
}
