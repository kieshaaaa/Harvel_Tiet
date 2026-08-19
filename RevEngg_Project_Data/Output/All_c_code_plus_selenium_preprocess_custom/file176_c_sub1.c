#include<stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
char str2[20];
char str1[20];
int isEqual = 1;
int i = 0;
;
;
;
{
(*temptemp1) = str1 ;
;
}
{
(*temptemp2) = str2 ;
;
}
 while(str1[i] != '\0' || str2[i] != '\0') {
 if(str1[i] != str2[i]) {
 isEqual = 0;
 break;
 }
 i++;
 }
 if(isEqual)
;
 else
;
 return 0;
}
