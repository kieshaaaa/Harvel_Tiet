#include <stdio.h>

void entry_point(int (*n), int (*ar), int (*temptemp1))
{
int temp;
int i;
;
;
 for (i = 0; i < (*n); i++)
 i = 0;
 while (i < (*n))
 {
 if (i == 0 || ar[i - 1] <= ar[i])
 i++;
 else
 {
 temp = ar[i-1];
 ar[i - 1] = ar[i];
 ar[i] = temp;
 i = i - 1;
 }
 }
 for (i = 0;i < (*n);i++)
{
(*temptemp1) = ar[i] ;
;
}
}
