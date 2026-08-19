#include <stdio.h>

int entry_point(char (*str), char (*temptemp1))
{
int len1;
int len;
int j;
int i;
;
 for(len=0; str[len]!='\0'; len++);
 len1=0;
 for(i=0; i<(len-len1);)
 {
 if(str[i]==str[i+1])
 {
 for(j=i;j<(len-len1);j++)
 str[j]=str[j+1];
 len1++;
 }
 else
 {
 i++;
 }
 }
{
(*temptemp1) = (*str) ;
;
}
 return 0;
}
