#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
char i = 'A';
;
 while (i <= 'Z') {
{
(*temptemp1) = i ;
;
}
 i++;
 }
;
 i = 'a';
 while (i <= 'z') {
{
(*temptemp2) = i ;
;
}
 i++;
 }
 return 0;
}
