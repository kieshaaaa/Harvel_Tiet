#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int cnt = 0;
;
 if ((*num) == 0) cnt = 1;
 else {
int tNum = (*num);
 do {
 cnt++;
 tNum /= 10;
 } while (tNum > 0);
 }
{
(*temptemp1) = (*num) ;
(*temptemp2) = cnt ;
;
}
 return 0;
}
