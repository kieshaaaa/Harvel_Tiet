/* Source: https://www.codezclub.com/c-reverse-array-using-pointers/ */
/*  C  Program to Reverse array using Pointers  */

#include<stdio.h>
#include<conio.h>
#define MAX 30

int main()
{
   int size, i, arr[MAX];
   int *ptr;

   ptr = &arr[0];

   printf("Enter the size of array :: ");
   scanf("%d", &size);

   printf("\nEnter %d integers into array:\n ", size);
   for (i = 0; i < size; i++)
  {
      printf("\nEnter %d integer into array: ", i+1);
      scanf("%d", ptr);
      ptr++;
   }

   ptr = &arr[size - 1];

   printf("\nElements of array in reverse order are :\n");

   for (i = size - 1; i >= 0; i--) {
      printf("\n\nElement %d is %d  ", i+1, *ptr);
      ptr--;
   }

 return 0;
}