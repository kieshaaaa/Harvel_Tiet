#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int base_size = 1;
int size_char = base_size;
int size_int = sizeof(int) / size_char;
int size_float = sizeof(float) / size_char;
int size_long_int = sizeof(long int) / size_char;
{
(*temptemp1) = size_char ;
;
}
{
(*temptemp2) = size_int ;
;
}
{
(*temptemp3) = size_float ;
;
}
{
(*temptemp4) = size_long_int ;
;
}
 return 0;
}
