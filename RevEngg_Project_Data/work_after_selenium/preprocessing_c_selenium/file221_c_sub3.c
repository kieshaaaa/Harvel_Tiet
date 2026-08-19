#include <stdio.h>

int entry_point(int (*num), int (*temptemp1), int (*temptemp2)) {
int i = 1;
int sum = 0;
;
 do {
 if ((*num) % i == 0) {
 sum += i;
 }
 i++;
 } while (i < (*num));
 if (sum == (*num)) {
{
(*temptemp1) = (*num) ;
;
}
 } else {
{
(*temptemp2) = (*num) ;
;
}
 }
 return 0;
}
