#include<stdio.h>

int entry_point(int (*number), int (*temptemp1), int (*temptemp2)) {
int values[10];
int max = 0;
int count = 0;
;
 do {
{
(*temptemp1) = count+1 ;
;
}
 if(count == 0 || (*number) > max) {
 max = (*number);
 }
 count++;
 } while(count < 10);
{
(*temptemp2) = max ;
;
}
 return 0;
}
