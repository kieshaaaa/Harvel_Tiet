#include <stdio.h>

int entry_point(int (*size), int (*arr), int (*num), int (*position), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int i;
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
;
;
 if((*position) < 1 || (*position) > (*size) + 1) {
{
(*temptemp2) = (*size) + 1 ;
;
}
 } else {
 i = (*size);
 while(i >= (*position)) {
 arr[i] = arr[i - 1];
 i--;
 }
 arr[(*position) - 1] = (*num);
 (*size)++;
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp3) = arr[i] ;
;
}
 }
 }
 return 0;
}
