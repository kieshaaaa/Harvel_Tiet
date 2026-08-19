#include <stdio.h>
#include <string.h>

int entry_point(char (*temptemp1)) {
char rev[100];
char str[100];
int len;
int k;
int j;
int i;
;
 fgets(str, sizeof(str), stdin);
 len = strlen(str) - 1;
 str[len] = '\0';
 i = len - 1;
 j = 0;
 while (i >= 0) {
 if (str[i] == ' ' || i == 0) {
 if (i == 0) {
 k = i;
 } else {
 k = i + 1;
 }
 while (str[k] != ' ' && str[k] != '\0') {
 rev[j++] = str[k++];
 }
 if (i != 0) {
 rev[j++] = ' ';
 }
 }
 i--;
 }
 rev[j] = '\0';
{
(*temptemp1) = rev ;
;
}
 return 0;
}
