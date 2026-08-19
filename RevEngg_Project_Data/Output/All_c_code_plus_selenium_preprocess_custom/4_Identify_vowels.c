#include<stdio.h>

int entry_point(char (*str1))
{
int i;
;
;
 puts((*str1));
 i=0;
 while(str1[i]!='\0')
 {
 if(str1[i]=='a' || str1[i]=='e' || str1[i]=='i' || str1[i]=='o' || str1[i]=='u')
 str1[i]=str1[i]-32;
 i++;
 }
;
 puts((*str1));
 return 0;
}
