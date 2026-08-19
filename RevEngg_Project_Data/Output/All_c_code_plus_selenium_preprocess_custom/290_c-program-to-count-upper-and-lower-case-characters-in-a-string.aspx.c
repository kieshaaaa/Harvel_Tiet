#include <stdio.h>

int entry_point(char (*str), int (*temptemp1), int (*temptemp2))
{
int countU;
int countL;
int counter;
 countL = countU = 0;
;
 for (counter = 0; str[counter] != NULL; counter++) {
 if (str[counter] >= 'A' && str[counter] <= 'Z')
 countU++;
 else if (str[counter] >= 'a' && str[counter] <= 'z')
 countL++;
 }
{
(*temptemp1) = countU ;
(*temptemp2) = countL ;
;
}
 return 0;
}
