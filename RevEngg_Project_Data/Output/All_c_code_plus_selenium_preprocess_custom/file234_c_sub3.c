#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
 int array_1[5] = {0, 1, 2, 3, 4};
 int array_2[5] = {5, 6, 7, 8, 9};
int i;
 for(i = 0; i < 5; i++) {
 array_1[i] = array_1[i] ^ array_2[i];
 array_2[i] = array_1[i] ^ array_2[i];
 array_1[i] = array_1[i] ^ array_2[i];
 }
;
 for(i = 0; i < 5; i++) {
{
(*temptemp1) = i ;
(*temptemp2) = array_1[i] ;
;
}
 }
;
 for(i = 0; i < 5; i++) {
{
(*temptemp3) = i ;
(*temptemp4) = array_2[i] ;
;
}
 }
 return 0;
}
