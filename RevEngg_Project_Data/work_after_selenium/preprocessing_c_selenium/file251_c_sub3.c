#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
 char string[100];
int spaces = 0;
int others = 0;
int digits = 0;
int alphabets = 0;
;
 fgets(string, 100, stdin);
int i = 0;
 if((string[i] >= 'a' && string[i] <= 'z') || (string[i] >= 'A' && string[i] <= 'Z')) {
 alphabets++;
 }
 else if(string[i] >= '0' && string[i] <= '9') {
 digits++;
 }
 else if(string[i] == ' ') {
 spaces++;
 }
 else {
 others++;
 }
 }
{
(*temptemp1) = alphabets ;
;
}
{
(*temptemp2) = digits ;
;
}
{
(*temptemp3) = spaces ;
;
}
{
(*temptemp4) = others ;
;
}
 return 0;
}
