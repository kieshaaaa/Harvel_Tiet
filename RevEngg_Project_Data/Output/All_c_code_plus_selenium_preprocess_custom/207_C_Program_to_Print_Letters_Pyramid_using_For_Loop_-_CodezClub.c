#include<stdio.h>

int entry_point(int (*num), char (*temptemp1), char (*temptemp2)) {
int j;
int i;
char symbol = 'A';
int count = 1;
;
;
 for (i = 1; i <= (*num); i++) {
 for (j = 0; j <= (count / 2); j++) {
{
(*temptemp1) = symbol++ ;
;
}
 }
 symbol = symbol - 2;
 for (j = 0; j < (count / 2); j++) {
{
(*temptemp2) = symbol-- ;
;
}
 }
 count = count + 2;
 symbol = 'A';
;
 }
 return (0);
 return 0;
}
