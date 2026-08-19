#include <stdio.h>

int entry_point(int (*grade), float (*temptemp1)) {
int totalCount = 0;
int passCount = 0;
float passPercentage;
;
 while ((*grade) != -1) {
 if ((*grade) >= 70 && (*grade) <= 100) {
 passCount++;
 }
 if ((*grade) >= 0 && (*grade) <= 100) {
 totalCount++;
 }
;
 }
 passPercentage = totalCount > 0 ? (float)passCount / totalCount * 100 : 0;
{
(*temptemp1) = passPercentage ;
;
}
 return 0;
}
