#include<stdio.h>

void printPattern(int n, int patternType) {
 for (int row = 1; row <= n; row++) {
 int start = (patternType == 1 || patternType == 2) ? 1 : row;
 int end = (patternType == 1) ? row : (patternType == 2) ? n - row + 1 : 1;
 int increment = (patternType == 3) ? -1 : 1;
 for (int num = start; patternType != 3 ? num <= end : num >= end; num += increment) {
;
 }
;
 if (patternType == 2 || patternType == 3) n--;
 }
}
int entry_point(int (*n)) {
;
;
 printPattern((*n), 1);
;
 printPattern((*n), 2);
;
 printPattern((*n), 3);
 return 0;
}
