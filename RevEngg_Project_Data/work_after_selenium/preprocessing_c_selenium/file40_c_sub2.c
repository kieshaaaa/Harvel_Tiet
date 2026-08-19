#include <stdio.h>

int addTwoNumbers(int x, int y) {
 return x + y;
}
int entry_point(int (*temptemp1)) {
int b = 20;
int a = 10;
 int result = addTwoNumbers(a, b);
{
(*temptemp1) = result ;
;
}
 return 0;
}
