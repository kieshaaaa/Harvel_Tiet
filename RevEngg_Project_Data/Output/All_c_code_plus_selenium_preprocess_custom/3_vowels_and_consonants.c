#include<stdio.h>
#include<string.h>

int entry_point(int (*temptemp1), int (*temptemp2))
{
char s[1000];
{
;
}
int i;
int consonants=0;
int vowels=0;
 for(i=0;s[i];i++)
 {
 if((s[i]>=65 && s[i]<=90)|| (s[i]>=97 && s[i]<=122))
 {
 if(s[i]=='a'|| s[i]=='e'||s[i]=='i'||s[i]=='o'||s[i]=='u')
 vowels++;
 else
 consonants++;
 }
 }
{
(*temptemp1) = vowels ;
;
}
{
(*temptemp2) = consonants ;
;
}
 return 0;
}
