#include <stdio.h>

int fibonacci(int n) {
 if (n == 0)
 return 0;
 else if (n == 1)
 return 1;
 else
 return fibonacci(n - 1) + fibonacci(n - 2);
}
int entry_point(int (*n), int (*temptemp1)) {
int i;
;
;
 for (i = 0; i < (*n); i++) {
{
(*temptemp1) = fibonacci(i) ;
;
}
 }
;
 return 0;
}
