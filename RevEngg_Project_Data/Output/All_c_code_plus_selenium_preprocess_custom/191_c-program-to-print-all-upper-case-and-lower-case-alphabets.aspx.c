#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2))
{
char i;
;
 for(i='A'; i<='Z'; i++)
{
(*temptemp1) = i ;
;
}
;
 for(i='a'; i<='z'; i++)
{
(*temptemp2) = i ;
;
}
 return 0;
}
