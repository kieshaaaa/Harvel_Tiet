#include <stdio.h>

int entry_point(int (*n), float (*a), float (*x), int (*temptemp1), float (*temptemp2))
{
float sum=0;
int i;
;
;
 for(i=(*n);i>=0;i--)
 {
{
(*temptemp1) = i ;
;
}
 }
;
 for(i=(*n);i>0;i--)
 {
 sum=(sum+a[i])*(*x);
 }
 sum=sum+a[0];
{
(*temptemp2) = sum ;
;
}
 return 0;
}
