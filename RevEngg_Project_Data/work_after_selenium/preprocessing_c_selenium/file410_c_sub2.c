#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2)) {
int arr[1];
 arr[0] = 100;
{
(*temptemp1) = arr[0] ;
;
}
 arr[0] = 200;
{
(*temptemp2) = arr[0] ;
;
}
 return 0;
}
