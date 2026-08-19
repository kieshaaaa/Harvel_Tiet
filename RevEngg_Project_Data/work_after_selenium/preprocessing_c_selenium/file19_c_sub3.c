#include<stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2)) {
 int sourceArray[10] = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50};
int destinationArray[10];
int k;
;
 for (k = 9; k >= 0; k--) {
 destinationArray[9 - k] = sourceArray[k];
 }
 for (k = 0; k < 10; k++) {
{
(*temptemp1) = k ;
(*temptemp2) = destinationArray[k] ;
;
}
 }
 return 0;
}
