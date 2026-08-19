#include<stdio.h>

int entry_point(int (*temptemp1)) {
int product;
int col;
int row;
 for (row = 1; row <= 10; row++) {
 for (col = 1; col <= row; col++) {
 product = row * col;
{
(*temptemp1) = product ;
;
}
 }
;
 }
 return 0;
}
