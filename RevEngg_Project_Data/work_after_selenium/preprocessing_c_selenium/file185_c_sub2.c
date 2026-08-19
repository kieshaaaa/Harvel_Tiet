#include<stdio.h>

int entry_point(int (*temp), int (*temptemp1), int (*temptemp2)) {
int nums[10];
int greatest = 0;
int idx = 0;
;
 while(idx < 10) {
{
(*temptemp1) = idx+1 ;
;
}
 if(idx == 0 || (*temp) > greatest) {
 greatest = (*temp);
 }
 idx++;
 }
{
(*temptemp2) = greatest ;
;
}
 return 0;
}
