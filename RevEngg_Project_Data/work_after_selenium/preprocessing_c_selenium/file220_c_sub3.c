#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*num), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5)) {
int count = 0;
int i;
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
;
 for(i = 0; i < (*size); i++) {
 if(arr[i] == (*num)) {
{
(*temptemp2) = (*num) ;
(*temptemp3) = i + 1 ;
;
}
 count++;
 break;
 }
 }
 if(count == 0) {
{
(*temptemp4) = (*num) ;
;
}
 } else {
{
(*temptemp5) = count ;
;
}
 }
 return 0;
}
