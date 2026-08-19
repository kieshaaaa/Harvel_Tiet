#include <stdio.h>

void toLowercase(char s[]);
void toUppercase(char s[]);
int entry_point(char (*temptemp1), char (*temptemp2)) {
char str[100];
;
 toLowercase(str);
{
(*temptemp1) = str ;
;
}
 toUppercase(str);
{
(*temptemp2) = str ;
;
}
 return 0;
}
void toLowercase(char s[]) {
 int i = 0;
 while (s[i]) {
 s[i] = (s[i] >= 'A' && s[i] <= 'Z') ? (s[i] + 32) : s[i];
 i++;
 }
}
void toUppercase(char s[]) {
 int i = 0;
 while (s[i]) {
 s[i] = (s[i] >= 'a' && s[i] <= 'z') ? (s[i] - 32) : s[i];
 i++;
 }
}
