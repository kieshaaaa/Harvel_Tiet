#include <stdio.h>

int entry_point(int (*grade), float (*temptemp1)) {
int totalCount = 0;
int passCount = 0;
float passPercentage;
 while (1) {
;
 if ((*grade) == -1) break;
 if ((*grade) < 0 || (*grade) > 100) {
;
 continue;
 }
 if ((*grade) >= 70) passCount++;
 totalCount++;
 }
 passPercentage = totalCount > 0 ? (float)passCount / totalCount * 100 : 0;
{
(*temptemp1) = passPercentage ;
;
}
 return 0;
}
