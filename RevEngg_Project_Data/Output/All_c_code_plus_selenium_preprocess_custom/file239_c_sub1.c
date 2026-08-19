#include <stdio.h>

int entry_point(int (*N), int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
int countOdd = 0;
int countEven = 0;
;
 for(i = 0; i < (*N); i++) {
{
(*temptemp1) = i+1 ;
;
}
 (arr[i] % 2 == 0) ? countEven++ : countOdd++;
 }
{
(*temptemp2) = countEven ;
;
}
{
(*temptemp3) = countOdd ;
;
}
 return 0;
}
