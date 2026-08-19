#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2))
{
;
 if((*num)%2==0)
{
(*temptemp1) = (*num) ;
;
}
 else
{
(*temptemp2) = (*num) ;
;
}
 return 0;
}
