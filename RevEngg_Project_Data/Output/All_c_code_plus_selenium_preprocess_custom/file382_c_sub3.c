#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
char str2[100];
char str1[100];
int index = 0;
;
 while(str1[index] != '\0') {
 str2[index] = str1[index];
 index++;
 }
 str2[index] = '\0';
;
{
(*temptemp1) = str1 ;
;
}
;
{
(*temptemp2) = str2 ;
;
}
;
 return 0;
}
