#include <string.h>
#include <stdio.h>

int entry_point(char (*temptemp1)) {
char str[100];
int len;
int temp;
int j;
int i;
;
 fgets(str, sizeof(str), stdin);
 len = strlen(str) - 1;
 str[len] = '\0';
 for (i = 0, j = len - 1; i < j; i++, j--) {
 temp = str[i];
 str[i] = str[j];
 str[j] = temp;
 }
 for (i = 0; i < len;) {
int start = i;
 while (str[i] != ' ' && i < len) i++;
int end = i - 1;
 while (start < end) {
 temp = str[start];
 str[start] = str[end];
 str[end] = temp;
 start++;
 end--;
 }
 i++;
 }
{
(*temptemp1) = str ;
;
}
 return 0;
}
