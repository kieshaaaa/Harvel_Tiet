#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2))
{
int even;
int odd;
;
 if ((*num) & 1)
 {
 odd = (*num) + 1;
{
(*temptemp1) = odd ;
;
}
 }
 else
 {
 even = (*num) + 2;
{
(*temptemp2) = even ;
;
}
 }
;
 return 0;
}
