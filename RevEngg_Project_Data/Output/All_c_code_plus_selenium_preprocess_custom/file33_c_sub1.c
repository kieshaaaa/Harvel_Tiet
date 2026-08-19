#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int result;
;
 if ((*num) % 2 == 0) {
 result = (*num) + 2;
{
(*temptemp1) = result ;
;
}
 } else {
 result = (*num) + 1;
{
(*temptemp2) = result ;
;
}
 }
 return 0;
}
