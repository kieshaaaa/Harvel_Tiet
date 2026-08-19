#include<stdio.h>

int entry_point(char (*temptemp1), int (*temptemp2)) {
int count = 0;
char c;
char ch[50];
;
 while ((c = getchar()) != '\n' && c != EOF && count < 49) {
 ch[count++] = c;
 }
 ch[count] = '\0';
;
{
(*temptemp1) = ch ;
;
}
;
{
(*temptemp2) = count ;
;
}
;
 return 0;
}
