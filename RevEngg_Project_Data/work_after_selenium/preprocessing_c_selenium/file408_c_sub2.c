#include <stdio.h>

int entry_point(int (*day), int (*month), int (*year), int (*temptemp1), int (*temptemp2), int (*temptemp3), char (*temptemp4)) {
int wDayNo;
 char *dayNames[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
;
int isLeap = (*year) % 4 == 0 && ((*year) % 100 != 0 || (*year) % 400 == 0);
int isValid = (*day) > 0 && (*month) > 0 && (*month) < 13 && (*year) >= 1800 && (*year) <= 2999 &&
 (((*month) == 2 && isLeap && (*day) <= 29) || ((*month) == 2 && !isLeap && (*day) <= 28) ||
 (((*month) == 4 || (*month) == 6 || (*month) == 9 || (*month) == 11) && (*day) <= 30) ||
 ((*day) <= 31));
 (((*month) == 2 && isLeap && (*day) <= 29) || ((*month) == 2 && !isLeap && (*day) <= 28) ||
 (((*month) == 4 || (*month) == 6 || (*month) == 9 || (*month) == 11) && (*day) <= 30) ||
 ((*day) <= 31));
 if (isValid) {
{
(*temptemp1) = (*day) ;
(*temptemp2) = (*month) ;
(*temptemp3) = (*year) ;
;
}
 if ((*month) < 3) {
 (*month) += 12;
 (*year)--;
 }
 wDayNo = ((*day) + (13 * ((*month) + 1) / 5) + (*year) + ((*year) / 4) - ((*year) / 100) + ((*year) / 400)) % 7;
{
(*temptemp4) = dayNames[wDayNo] ;
;
}
 } else {
;
 }
 return 0;
}
