#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int n1;
int pro;
int sum;
int dig;
;
 n1=(*n);
 sum=0;
 pro=1;
 while((*n)>0)
 {
 dig=(*n)%10;
 sum+=dig;
 pro*=dig;
 (*n)=(*n)/10;
 }
{
(*temptemp1) = n1 ;
(*temptemp2) = sum ;
;
}
{
(*temptemp3) = n1 ;
(*temptemp4) = pro ;
;
}
 return 0;
}
