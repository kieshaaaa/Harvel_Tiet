#include <string.h>
#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2), int (*temptemp3)) {
char buffer[10] = {0};
int i;
 memset(buffer, '0', 9);
;
 for(i = 0; i < 9; i++) {
{
(*temptemp1) = buffer[i] ;
;
}
 }
;
 memset(buffer, '*', 9);
;
 for(i = 0; i < 9; i++) {
{
(*temptemp2) = buffer[i] ;
;
}
 }
;
 memset(buffer, 7, 9);
;
 for(i = 0; i < 10; i++) {
{
(*temptemp3) = buffer[i] ;
;
}
 }
;
 return 0;
}
