#include <stdio.h>

int entry_point(int (*dd), int (*mm), int (*yy)) {
int isValid = 0;
;
 if (((*yy) >= 1900 && (*yy) <= 9999) &&
 (((*mm) == 1 || (*mm) == 3 || (*mm) == 5 || (*mm) == 7 || (*mm) == 8 || (*mm) == 10 || (*mm) == 12) && ((*dd) >= 1 && (*dd) <= 31)) ||
 (((*mm) == 4 || (*mm) == 6 || (*mm) == 9 || (*mm) == 11) && ((*dd) >= 1 && (*dd) <= 30)) ||
 (((*mm) == 2) && (((*dd) >= 1 && (*dd) <= 28) || ((*dd) == 29 && ((*yy) % 400 == 0 || ((*yy) % 4 == 0 && (*yy) % 100 != 0)))))) {
 isValid = 1;
 }
 if (isValid) {
;
 } else {
;
 }
 return 0;
}
