#include<stdio.h>

int entry_point(char (*temptemp1)) {
char line[150];
int len = 0;
int j;
int i;
;
 for(i = 0; line[i] != '\0'; i++) {
 if((line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z')) {
 line[len++] = line[i];
 }
 }
 line[len] = '\0';
;
{
(*temptemp1) = line ;
;
}
;
 return 0;
}
