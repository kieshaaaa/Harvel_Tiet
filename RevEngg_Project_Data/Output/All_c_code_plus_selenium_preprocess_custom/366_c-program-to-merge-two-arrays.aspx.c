#include <stdio.h>

void readArray(int arr[], int size)
{
 int i = 0;
;
 for (i = 0; i < size; i++) {
;
 }
}
void printArray(int arr[], int size)
{
 int i = 0;
;
 for (i = 0; i < size; i++) {
;
 }
;
}
void merge(int arr1[], int size1, int arr2[], int size2, int arr3[])
{
 int i = 0, j = 0;
 for (i = 0; i < size1; i++)
 arr3[i] = arr1[i];
 for (i = 5, j = 0; i < size2 + 5; i++, j++)
 arr3[i] = arr2[j];
}
int entry_point()
{
int arr1[5];
int arr2[5];
int arr3[10];
 readArray(arr1, 5);
 readArray(arr2, 5);
 merge(arr1, 5, arr2, 5, arr3);
 printArray(arr3, 10);
 return 0;
}
