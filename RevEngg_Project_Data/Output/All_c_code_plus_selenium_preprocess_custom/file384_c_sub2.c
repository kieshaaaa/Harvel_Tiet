#include <stdio.h>

int entry_point(int (*line), long int (*temptemp1)) {
int j;
int i;
;
 for (i = 0; i < (*line); i++) {
 for (j = 0; j < (*line) - i - 1; j++) {
;
 }
 long value = 1;
 for (j = 0; j <= i; j++) {
 if (j != 0) {
 value = value * (i - j + 1) / j;
 }
{
(*temptemp1) = value ;
;
}
 }
;
 }
 return 0;
}
