#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
;
int temp = (*num) - 1;
 temp = temp + 1;
 if (temp == (*num))
{
(*temptemp1) = (*num) ;
;
}
 if ((temp - (*num)) % 2 == 0)
{
(*temptemp2) = (*num) ;
;
}
 else
{
(*temptemp3) = (*num) ;
;
}
 return 0;
}
