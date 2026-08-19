#include<stdio.h>

int entry_point(char (*ch), char (*temptemp1), char (*temptemp2)) {
;
 switch ((*ch)) {
 case 'a': case 'e': case 'i': case 'o': case 'u':
 case 'A': case 'E': case 'I': case 'O': case 'U':
{
(*temptemp1) = (*ch) ;
;
}
 break;
 default:
{
(*temptemp2) = (*ch) ;
;
}
 }
 return 0;
}
