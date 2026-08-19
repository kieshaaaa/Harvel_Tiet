#include<stdio.h>

int entry_point(char (*temptemp1), int (*temptemp2)) {
int wordCount = 0;
char inputString[30];
;
int i = 0;
 while (inputString[i] == ' ' || inputString[i] == '\n' || inputString[i] == '\t') {
 i++;
 }
 if (inputString[i] != '\0') {
 wordCount++;
 }
 while (inputString[i] != '\0' && inputString[i] != ' ' && inputString[i] != '\n' && inputString[i] != '\t') {
 i++;
 }
 }
{
(*temptemp1) = inputString ;
(*temptemp2) = wordCount ;
;
}
 return 0;
}
