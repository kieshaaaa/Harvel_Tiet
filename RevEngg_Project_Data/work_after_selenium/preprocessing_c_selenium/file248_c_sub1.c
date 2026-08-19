#include <stdio.h>

int entry_point(int (*temptemp1)) {
 int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
int sum = 0;
int i = 0;
 while (i < 9) {
 sum += array[i];
 i++;
 }
{
(*temptemp1) = sum ;
;
}
 return 0;
}
