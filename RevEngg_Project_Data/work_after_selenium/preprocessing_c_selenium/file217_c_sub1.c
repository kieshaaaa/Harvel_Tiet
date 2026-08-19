#include<stdio.h>

int entry_point(int (*temptemp1)) {
int product;
int j;
int i = 1;
 while (i <= 10) {
 j = 1;
 while (j <= i) {
 product = i * j;
{
(*temptemp1) = product ;
;
}
 j++;
 }
;
 i++;
 }
 return 0;
}
