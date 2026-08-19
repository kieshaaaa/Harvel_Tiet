#include <stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2))
{
;
 switch((*number)%2)
 {
 case 0:
{
(*temptemp1) = (*number) ;
;
}
 break;
 case 1:
{
(*temptemp2) = (*number) ;
;
}
 break;
 }
 return 0;
}
