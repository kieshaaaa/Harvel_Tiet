#include<stdio.h>

int entry_point(int (*numberOfConversions), float (*feet), int (*temptemp1), float (*temptemp2)) {
float inches;
int i;
;
 for(i = 0; i < (*numberOfConversions); i++) {
{
(*temptemp1) = i+1 ;
;
}
 inches = (*feet) * 12.0f;
{
(*temptemp2) = inches ;
;
}
 }
 return 0;
}
