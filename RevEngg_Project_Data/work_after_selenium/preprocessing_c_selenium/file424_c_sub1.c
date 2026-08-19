#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
char str[100];
int countSpaces = 0;
int countSpecialChar = 0;
int countAlphabet = 0;
int countDigits = 0;
int counter = 0;
;
 while (str[counter] != '\0') {
 if (str[counter] >= '0' && str[counter] <= '9')
 countDigits++;
 else if ((str[counter] >= 'A' && str[counter] <= 'Z') || (str[counter] >= 'a' && str[counter] <= 'z'))
 countAlphabet++;
 else if (str[counter] == ' ')
 countSpaces++;
 else
 countSpecialChar++;
 counter++;
 }
{
(*temptemp1) = countDigits ;
;
}
{
(*temptemp2) = countAlphabet ;
;
}
{
(*temptemp3) = countSpaces ;
;
}
{
(*temptemp4) = countSpecialChar ;
;
}
 return 0;
}
