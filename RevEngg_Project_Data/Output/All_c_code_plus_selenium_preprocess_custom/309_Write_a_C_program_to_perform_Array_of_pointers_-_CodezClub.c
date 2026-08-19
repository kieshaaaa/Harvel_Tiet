#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5), int (*temptemp6))
{
int c;
int b;
int a;
 int *ptr[3];
 ptr[0]= &a;
 ptr[1]= &b;
 ptr[2]= &c;
 a=100;
 b=200;
 c=300;
{
(*temptemp1) = *ptr[0] ;
(*temptemp2) = *ptr[1] ;
(*temptemp3) = *ptr[2] ;
;
}
 *ptr[0] +=10;
 *ptr[1] +=10;
 *ptr[2] +=10;
;
{
(*temptemp4) = *ptr[0] ;
(*temptemp5) = *ptr[1] ;
(*temptemp6) = *ptr[2] ;
;
}
 return 0;
}
