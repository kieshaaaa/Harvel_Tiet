#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
 char string[100];
int others = 0;
int digits = 0;
int alphabets = 0;
;
 fgets(string, 100, stdin);
int i = 0;
 switch(string[i]) {
 case 'a' ... 'z':
 case 'A' ... 'Z':
 alphabets++;
 break;
 case '0' ... '9':
 digits++;
 break;
 default:
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
(*temptemp3) = others ;
;
}
 return 0;
}
