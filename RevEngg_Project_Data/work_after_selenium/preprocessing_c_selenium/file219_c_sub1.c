#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int found = 0;
int i;
;
 for(i = 0; i < (*size); ++i) {
{
(*temptemp1) = i + 1 ;
;
}
 }
;
 for(i = 0; i < (*size) && !found; ++i) {
 if(arr[i] == (*num)) {
 found = 1;
{
(*temptemp2) = (*num) ;
(*temptemp3) = i + 1 ;
;
}
 }
 }
 if(!found) {
{
(*temptemp4) = (*num) ;
;
}
 }
 return 0;
}
