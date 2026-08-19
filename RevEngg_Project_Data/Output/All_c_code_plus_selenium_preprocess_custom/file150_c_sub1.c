#include <stdio.h>

int entry_point(int (*number), int (*temptemp1)) {
int i;
int bin[32] = {0};
;
 for (i = 0; i < 32; i++) {
 bin[i] = ((*number) >> i) & 1;
 }
;
int startPrinting = 0;
 for (i = 31; i >= 0; i--) {
 if (bin[i] == 1)
 startPrinting = 1;
 if (startPrinting)
{
(*temptemp1) = bin[i] ;
;
}
 }
;
;
 return 0;
}
