#include<stdio.h>

int entry_point(int (*a), int (*b), int (*c), int (*temptemp1), int (*temptemp2)) {
int small;
int big;
;
;
;
 big = (*a);
 if ((*b) > big) big = (*b);
 if ((*c) > big) big = (*c);
 small = (*a);
 if ((*b) < small) small = (*b);
 if ((*c) < small) small = (*c);
{
(*temptemp1) = big ;
;
}
{
(*temptemp2) = small ;
;
}
 return 0;
}
