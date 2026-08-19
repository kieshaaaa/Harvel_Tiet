#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int nextEvenOrOdd;
;
 if (((*num) & 1) == 0) {
 nextEvenOrOdd = (*num) + 2;
{
(*temptemp1) = nextEvenOrOdd ;
;
}
 } else {
 nextEvenOrOdd = (*num) + 1;
{
(*temptemp2) = nextEvenOrOdd ;
;
}
 }
 return 0;
}
