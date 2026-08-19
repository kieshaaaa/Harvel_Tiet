#include <stdio.h>

void readArray(int arr[], int size)
{
 int i =0;
;
 for(i=0; i < size; i++)
 {
;
 }
}
void printArray(int arr[], int size)
{
 int i =0;
;
 for(i=0; i < size; i++)
 {
;
 }
;
}
void replaceEvenOdd(int arr[], int size)
{
 int i=0;
 for(i=0; i < size; i++)
 {
 if( arr[i] % 2 == 0 )
 arr[i] = 0 ;
 else
 arr[i] = 1 ;
 }
}
int entry_point()
{
int arr[10];
 readArray(arr,10);
;
 printArray(arr,10);
 replaceEvenOdd(arr,10);
;
 printArray(arr,10);
 return 0;
}
