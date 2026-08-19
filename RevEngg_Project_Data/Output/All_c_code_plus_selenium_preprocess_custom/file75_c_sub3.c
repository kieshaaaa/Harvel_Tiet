#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int cnt = 0;
;
 if ((*num) == 0) {
 cnt = 1;
 } else {
int tNum = (*num) < 0 ? -(*num) : (*num);
 while (tNum > 0) {
 cnt++;
 tNum /= 10;
 }
 }
{
(*temptemp1) = (*num) ;
(*temptemp2) = cnt ;
;
}
 return 0;
}
