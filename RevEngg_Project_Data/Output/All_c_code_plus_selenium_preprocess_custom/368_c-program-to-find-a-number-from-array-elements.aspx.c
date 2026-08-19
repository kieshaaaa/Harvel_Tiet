#include <stdio.h>

void readArray(int a[], int size)
{
 int i;
 for (i = 0; i < size; i++) {
;
 }
}
int findElement(int a[], int size, int item)
{
 int i, pos = -1;
 for (i = 0; i < size; i++) {
 if (a[i] == item) {
 pos = i;
 break;
 }
 }
 return pos;
}
int entry_point(int (*n), int (*item), int (*temptemp1), int (*temptemp2), int (*temptemp3))
{
 int arr[20];
int pos;
;
;
 readArray(arr, (*n));
;
 pos = findElement(arr, (*n), (*item));
 if (pos == -1)
{
(*temptemp1) = (*item) ;
;
}
 else
{
(*temptemp2) = (*item) ;
(*temptemp3) = pos ;
;
}
;
 return 0;
}
