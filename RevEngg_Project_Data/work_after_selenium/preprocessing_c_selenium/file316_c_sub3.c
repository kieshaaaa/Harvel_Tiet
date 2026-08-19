#include<stdio.h>

int entry_point(char (*temptemp1), int (*temptemp2)) {
int wordCounter = 0;
char text[30];
;
int inWord = 0;
int index = 0;
 if (text[index] == ' ' || text[index] == '\n' || text[index] == '\t') {
 inWord = 0;
 } else if (!inWord) {
 inWord = 1;
 wordCounter++;
 }
 }
{
(*temptemp1) = text ;
(*temptemp2) = wordCounter ;
;
}
 return 0;
}
