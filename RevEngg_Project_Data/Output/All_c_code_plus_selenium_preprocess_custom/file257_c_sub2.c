#include <stdio.h>

int entry_point(int (*year), int (*temptemp1), int (*temptemp2)) {
int isLeapYear = 0;
;
 if ((*year) % 400 == 0) {
 isLeapYear = 1;
 } else if ((*year) % 100 == 0) {
 isLeapYear = 0;
 } else if ((*year) % 4 == 0) {
 isLeapYear = 1;
 }
 if (isLeapYear) {
{
(*temptemp1) = (*year) ;
;
}
 } else {
{
(*temptemp2) = (*year) ;
;
}
 }
 return 0;
}
