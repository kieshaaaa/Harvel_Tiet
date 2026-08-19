#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1)) {
;
;
 while((*a) != (*b)) {
 if((*a) > (*b)) {
 (*a) = (*a) - (*b);
 } else {
 (*b) = (*b) - (*a);
 }
 }
{
(*temptemp1) = (*a) ;
;
}
 return 0;
}
