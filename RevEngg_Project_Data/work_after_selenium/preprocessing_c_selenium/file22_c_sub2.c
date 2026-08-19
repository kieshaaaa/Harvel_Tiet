#include <stdio.h>

int entry_point(int (*start), int (*end), int (*temptemp1)) {
int sum;
int j;
int i;
int count = 0;
;
;
 for (i = (*start); i <= (*end); i++) {
 sum = 0;
 j = 1;
 do {
 if (i % j == 0) {
 sum += j;
 }
 j++;
 } while (j <= i / 2);
 if (sum == i && i != 0) {
 count++;
 }
 }
{
(*temptemp1) = count ;
;
}
 return 0;
}
