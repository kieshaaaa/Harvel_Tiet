#include <stdio.h>

int entry_point(int (*count), int (*nums), int (*temptemp1), int (*temptemp2)) {
int y;
int x;
int temp;
;
 for(x = 0; x < (*count); x++) {
{
(*temptemp1) = x + 1 ;
;
}
 }
 for(x = 1; x < (*count); x++) {
 temp = nums[x];
 for(y = x; y > 0 && nums[y - 1] > temp; y--) {
 nums[y] = nums[y - 1];
 }
 nums[y] = temp;
 }
;
 for(x = 0; x < (*count); x++) {
{
(*temptemp2) = nums[x] ;
;
}
 }
;
 return 0;
}
