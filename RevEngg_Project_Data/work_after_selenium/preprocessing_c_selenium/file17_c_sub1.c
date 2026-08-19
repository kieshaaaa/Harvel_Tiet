#include <stdio.h>

int entry_point(int (*lower), int (*upper), int (*temptemp1)) {
int fibNext;
int fib2 = 1;
int fib1 = 0;
;
;
 for (fibNext = fib1 + fib2; fibNext <= (*upper); fibNext = fib1 + fib2) {
 if (fibNext >= (*lower)) {
{
(*temptemp1) = fibNext ;
;
}
 }
 fib1 = fib2;
 fib2 = fibNext;
 }
 return 0;
}
