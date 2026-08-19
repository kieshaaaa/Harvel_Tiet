#include <stdio.h>

int entry_point(char (*string), int (*temptemp1), int (*temptemp2), int (*temptemp3))
{
int i;
int others;
int digits;
int alphabets;
 alphabets = digits = others = i = 0;
;
 while(string[i]!='\0')
 {
 if((string[i]>='a' && string[i]<='z') || (string[i]>='A' && string[i]<='Z'))
 {
 alphabets++;
 }
 else if(string[i]>='0' && string[i]<='9')
 {
 digits++;
 }
 else
 {
 others++;
 }
 i++;
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
