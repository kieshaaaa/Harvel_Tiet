#include <stdio.h>

int entry_point(int (*n), float (*a), float (*x), int (*temptemp1), float (*temptemp2)) {
float sum = 0;
int i;
;
 for (i = 0; i <= (*n); i++) {
{
(*temptemp1) = (*n) - i ;
;
}
 }
;
 for (i = 0; i < (*n); i++) {
 sum = (sum + a[i]) * (*x);
 }
 sum += a[(*n)];
{
(*temptemp2) = sum ;
;
}
 return 0;
}
