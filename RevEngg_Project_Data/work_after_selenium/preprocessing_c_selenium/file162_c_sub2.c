#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
;
int modifiedNum = (((*num) - 1) * 2) + 1;
 if(modifiedNum != (*num))
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
