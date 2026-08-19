#include<stdio.h>

int entry_point(int (*x), int (*y), int (*z), int (*temptemp1), int (*temptemp2)) {
int min;
int max;
;
 max = min = (*x);
;
 if ((*y) > max) max = (*y);
 if ((*y) < min) min = (*y);
;
 if ((*z) > max) max = (*z);
 if ((*z) < min) min = (*z);
{
(*temptemp1) = max ;
;
}
{
(*temptemp2) = min ;
;
}
 return 0;
}
