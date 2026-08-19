#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1)) {
int sum;
int j;
int i;
int count;
;
;
 for (i = (*start); i <= (*end); i++) {
 sum = 0;
 for (j = 1; j <= i / 2; j++) {
 if (i % j == 0) {
 sum = sum + j;
 }
 }
 if (sum == i && i != 0) {
 count = count + 1;
 }
 }
{
(*temptemp1) = count ;
;
}
 return 0;
}
