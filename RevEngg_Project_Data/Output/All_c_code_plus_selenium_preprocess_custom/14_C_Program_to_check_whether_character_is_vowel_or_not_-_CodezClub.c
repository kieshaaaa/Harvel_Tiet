#include<stdio.h>

int entry_point(char (*ch), char (*temptemp1), char (*temptemp2), char (*temptemp3), char (*temptemp4), char (*temptemp5), char (*temptemp6))
{
;
 switch((*ch))
 {
 case 'a':
{
(*temptemp1) = (*ch) ;
;
}
 break;
 case 'e':
{
(*temptemp2) = (*ch) ;
;
}
 break;
 case 'i':
{
(*temptemp3) = (*ch) ;
;
}
 break;
 case 'o':
{
(*temptemp4) = (*ch) ;
;
}
 break;
 case 'u':
{
(*temptemp5) = (*ch) ;
;
}
 break;
 default:
{
(*temptemp6) = (*ch) ;
;
}
 }
 return 0;
}
