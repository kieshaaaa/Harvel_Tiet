#include <stdio.h>

int entry_point(int (*number), int (*temptemp1))
{
int i;
int cnt;
int oct[32];
;
 cnt = 0;
 while ((*number) > 0) {
 oct[cnt] = (*number) % 8;
 (*number) = (*number) / 8;
 cnt++;
 }
;
 for (i = (cnt - 1); i >= 0; i--)
{
(*temptemp1) = oct[i] ;
;
}
 return 0;
}
