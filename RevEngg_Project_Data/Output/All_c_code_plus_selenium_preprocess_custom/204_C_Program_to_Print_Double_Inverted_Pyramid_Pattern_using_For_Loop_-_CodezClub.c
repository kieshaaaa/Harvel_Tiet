#include<stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2)) {
int k;
int j;
int i;
int blank = 0;
int lines = 6;
char symbol = 'A';
int temp;
 int diff[7] = { 0, 1, 3, 5, 7, 9, 11 };
 k = 0;
 for (i = lines; i >= 0; i--) {
;
 symbol = 'A';
 for (j = i; j >= 0; j--) {
{
(*temptemp1) = symbol++ ;
;
}
 }
 blank = diff[k++];
 for (j = 0; j < blank; j++) {
;
 }
 symbol = 'F' - (blank / 2);
 if (blank == 0) {
 temp = i - 1;
 } else {
 temp = i;
 }
 for (j = 0; j <= temp; j++) {
{
(*temptemp2) = symbol-- ;
;
}
 }
 }
 return (0);
 return 0;
}
