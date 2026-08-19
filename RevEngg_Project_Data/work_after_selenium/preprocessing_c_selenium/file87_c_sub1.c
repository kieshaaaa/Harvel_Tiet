#include <stdio.h>
#include <string.h>

int entry_point(char (*binary), int (*temptemp1)) {
int decimal = 0;
int i;
;
int length = strlen((*binary));
 for(i = 0; i < length; i++) {
 decimal = decimal << 1;
 if(binary[i] == '1') {
 decimal = decimal | 1;
 }
 }
;
{
(*temptemp1) = decimal ;
;
}
 return 0;
}
