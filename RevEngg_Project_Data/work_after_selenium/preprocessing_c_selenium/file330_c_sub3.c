#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1)) {
int temp;
;
;
 while((*b) != 0) {
 temp = (*a);
 (*a) = (*b);
 (*b) = temp % (*b);
 }
{
(*temptemp1) = (*a) ;
;
}
 return 0;
}
