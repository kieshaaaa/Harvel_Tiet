#include<stdio.h>

int entry_point(int (*temptemp1), unsigned int (*temptemp2), int (*temptemp3), unsigned int (*temptemp4), int (*temptemp5), unsigned int (*temptemp6)) {
 int a[3] = { 11, 22, 33 };
unsigned int address0 = (unsigned int)&a[0];
unsigned int address1 = (unsigned int)&a[1];
unsigned int address2 = (unsigned int)&a[2];
{
(*temptemp1) = a[0] ;
(*temptemp2) = address0 ;
;
}
{
(*temptemp3) = a[1] ;
(*temptemp4) = address1 ;
;
}
{
(*temptemp5) = a[2] ;
(*temptemp6) = address2 ;
;
}
 return 0;
}
