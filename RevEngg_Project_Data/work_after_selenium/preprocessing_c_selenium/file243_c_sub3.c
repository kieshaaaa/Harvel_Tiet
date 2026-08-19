#include <stdio.h>

int entry_point(int (*num), int (*temptemp1)) {
;
float temp = (*num) / 10.0f;
int truncated = (int)temp;
int result = truncated * 10;
{
(*temptemp1) = result ;
;
}
 return 0;
}
