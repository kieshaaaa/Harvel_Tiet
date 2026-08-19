#include<stdio.h>

int entry_point(int (*N), float (*temptemp1)) {
int i = 1;
float sum = 0.0;
;
 do {
 sum += 1.0 / i;
 i++;
 } while(i <= (*N));
{
(*temptemp1) = sum ;
;
}
 return 0;
}
