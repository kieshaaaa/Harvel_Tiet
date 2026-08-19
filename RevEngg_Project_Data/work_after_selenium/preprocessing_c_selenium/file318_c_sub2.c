#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int temp;
;
 temp = ((*num) / 2) * 2;
 if (temp == (*num)) {
{
(*temptemp1) = (*num) ;
;
}
 } else {
{
(*temptemp2) = (*num) ;
;
}
 }
 return 0;
}
