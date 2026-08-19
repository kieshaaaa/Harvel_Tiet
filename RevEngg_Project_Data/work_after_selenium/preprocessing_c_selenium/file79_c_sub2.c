#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int size_char_array = sizeof(char[10]);
int size_int_array = sizeof(int[10]);
int size_float_array = sizeof(float[10]);
int size_long_int_array = sizeof(long int[10]);
{
(*temptemp1) = size_char_array ;
;
}
{
(*temptemp2) = size_int_array ;
;
}
{
(*temptemp3) = size_float_array ;
;
}
{
(*temptemp4) = size_long_int_array ;
;
}
 return 0;
}
