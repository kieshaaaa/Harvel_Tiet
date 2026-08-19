#include <stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int nthOdd = 0;
int i = 1;
int counter = 0;
;
 while(counter < (*n)) {
 if(i % 2 != 0) {
 nthOdd = i;
 counter++;
 }
 i++;
 }
;
{
(*temptemp1) = (*n) ;
;
}
;
{
(*temptemp2) = nthOdd ;
;
}
 return 0;
}
