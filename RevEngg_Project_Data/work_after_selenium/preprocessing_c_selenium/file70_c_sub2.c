#include <stdio.h>

int entry_point(int (*size), int (*first), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int second[100];
int i;
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp1) = i + 1 ;
;
}
 }
 i = 0;
 while(i < (*size)) {
 second[i] = first[i];
 i++;
 }
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp2) = first[i] ;
;
}
 }
;
 for(i = 0; i < (*size); i++) {
{
(*temptemp3) = second[i] ;
;
}
 }
 return 0;
}
