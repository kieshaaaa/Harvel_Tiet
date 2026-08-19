#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2))
{
int cnt;
int tNum;
;
 cnt = 0;
 tNum = (*num);
 while (tNum > 0) {
 cnt++;
 tNum /= 10;
 }
{
(*temptemp1) = cnt ;
(*temptemp2) = (*num) ;
;
}
 return 0;
}
