#include<stdio.h>

int entry_point(char (*temptemp1)) {
char line[150];
int j;
int i;
;
 for(i = 0, j = 0; line[i] != '\0'; i++) {
 if((line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z')) {
 line[j++] = line[i];
 }
 }
 line[j] = '\0';
;
{
(*temptemp1) = line ;
;
}
;
 return 0;
}
