#include<stdio.h>

int entry_point(int (*n), int (*temptemp1), int (*temptemp2)) {
int count = 0;
int next;
int second = 1;
int first = 0;
;
{
(*temptemp1) = (*n) ;
;
}
 while (count < (*n)) {
 if (count <= 1) {
 next = count;
 } else {
 next = first + second;
 first = second;
 second = next;
 }
{
(*temptemp2) = next ;
;
}
 count++;
 }
;
 return 0;
}
