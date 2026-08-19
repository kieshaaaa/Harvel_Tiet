#include<stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int j;
int i;
;
;
 for(i = 1; i <= (*n); i++) {
 for(j = 1; j <= i; j++) {
{
(*temptemp1) = j ;
;
}
 }
;
 }
;
 for(i = (*n); i >= 1; i--) {
 for(j = 1; j <= i; j++) {
{
(*temptemp2) = j ;
;
}
 }
;
 }
;
 for(i = (*n); i >= 1; i--) {
 for(j = i; j >= 1; j--) {
{
(*temptemp3) = j ;
;
}
 }
;
 }
 return 0;
}
