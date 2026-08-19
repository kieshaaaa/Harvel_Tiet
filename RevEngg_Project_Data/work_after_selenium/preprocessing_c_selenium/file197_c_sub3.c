#include<stdio.h>

int entry_point(int (*total), int (*elements), int (*temptemp1), int (*temptemp2)) {
int exchange;
int y;
int x;
;
 for(x = 0; x < (*total); x++) {
{
(*temptemp1) = x + 1 ;
;
}
 }
 for (x = 0; x < (*total) - 1; x++) {
 for (y = 0; y < (*total) - x - 1; y++) {
 if (elements[y] < elements[y + 1]) {
 exchange = elements[y];
 elements[y] = elements[y + 1];
 elements[y + 1] = exchange;
 }
 }
 }
;
 for (x = 0; x < (*total); x++)
{
(*temptemp2) = elements[x] ;
;
}
;
 return 0;
}
