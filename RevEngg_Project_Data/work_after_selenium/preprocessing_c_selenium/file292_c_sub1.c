#include <string.h>
#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
char buffer[10] = {0};
int i;
 memset(buffer, 'A', 9);
 buffer[9] = '\0';
;
{
(*temptemp1) = buffer ;
;
}
;
 memset(buffer, '#', 9);
;
{
(*temptemp2) = buffer ;
;
}
;
 memset(buffer, 0xAB, 9);
;
 for(i = 0; i < 10; i++) {
{
temptemp3 = buffer[i] ;
;
}
 }
;
 return 0;
}
