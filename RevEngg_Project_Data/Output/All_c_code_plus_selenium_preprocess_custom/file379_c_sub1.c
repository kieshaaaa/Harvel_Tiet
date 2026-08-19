#include <stdio.h>

int entry_point(int (*numbers), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4)) {
int i;
int maxIndex = 0;
int minIndex = 0;
;
 for(i = 0; i < 10; i++) {
 }
 for(i = 1; i < 10; i++) {
 if(numbers[i] < numbers[minIndex]) {
 minIndex = i;
 }
 if(numbers[i] > numbers[maxIndex]) {
 maxIndex = i;
 }
 }
{
(*temptemp1) = numbers[minIndex] ;
;
}
{
(*temptemp2) = minIndex ;
;
}
{
(*temptemp3) = numbers[maxIndex] ;
;
}
{
(*temptemp4) = maxIndex ;
;
}
 return 0;
}
