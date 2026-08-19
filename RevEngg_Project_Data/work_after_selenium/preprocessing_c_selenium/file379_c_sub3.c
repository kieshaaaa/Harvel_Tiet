#include <stdio.h>

int entry_point(int (*arr), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int maxPos;
int minPos;
int maxVal;
int minVal;
int i;
;
 for(i = 0; i < 10; i++) {
 if(i == 0) {
 minVal = maxVal = arr[i];
 minPos = maxPos = 0;
 } else {
 if(arr[i] < minVal) {
 minVal = arr[i];
 minPos = i;
 }
 if(arr[i] > maxVal) {
 maxVal = arr[i];
 maxPos = i;
 }
 }
 }
{
(*temptemp1) = minVal ;
;
}
{
(*temptemp2) = minPos ;
;
}
{
(*temptemp3) = maxVal ;
;
}
{
(*temptemp4) = maxPos ;
;
}
 return 0;
}
