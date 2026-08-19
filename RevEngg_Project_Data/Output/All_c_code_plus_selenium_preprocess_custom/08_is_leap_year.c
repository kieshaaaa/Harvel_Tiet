#include <stdio.h>

int entry_point(int (*year), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int result;
;
 if ((*year) % 400 == 0)
 {
 result = 1;
{
(*temptemp1) = (*year) ;
;
}
 }
 else if ((*year) % 100 == 0)
 {
 result = 2;
{
(*temptemp2) = (*year) ;
;
}
 }
 else if ((*year) % 4 == 0)
 {
 result = 3;
{
(*temptemp3) = (*year) ;
;
}
 }
 else
 {
 result = 4;
{
(*temptemp4) = (*year) ;
;
}
 }
 return 0;
}
