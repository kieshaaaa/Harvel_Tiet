#include <stdio.h>
#include <math.h>
#include <string.h>

int entry_point(char (*binary), int (*temptemp1)) {
int decimal;
int i;
;
int length = strlen((*binary));
 for(i = 0; i < length; i++) {
 if(binary[i] == '1') {
 decimal += pow(2, length - i - 1);
 }
 }
{
(*temptemp1) = decimal ;
;
}
 return 0;
}
