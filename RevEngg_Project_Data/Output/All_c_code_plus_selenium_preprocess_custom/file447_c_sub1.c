#include<stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), unsigned int (*temptemp3)) {
 int a[3] = { 11, 22, 33 };
int i;
 for(i = 0; i < 3; i++) {
int value = a[i];
unsigned int address = (unsigned int)&a[i];
{
(*temptemp1) = i ;
(*temptemp2) = value ;
(*temptemp3) = address ;
;
}
 }
 return 0;
}
