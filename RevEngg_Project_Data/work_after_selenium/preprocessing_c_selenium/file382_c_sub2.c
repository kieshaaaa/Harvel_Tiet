#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
char str2[100];
char str1[100];
int count = 0;
;
 for(count = 0; str1[count] != '\0'; count++) {
 str2[count] = str1[count];
 }
 str2[count] = '\0';
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
