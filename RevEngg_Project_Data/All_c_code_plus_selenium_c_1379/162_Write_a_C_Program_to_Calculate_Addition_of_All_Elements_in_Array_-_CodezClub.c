/* Source: https://www.codezclub.com/write-a-c-program-to-calculate-addition-of-all-elements-in-array/ */
/* C Program to Calculate Addition of All Elements in Array */

#include<stdio.h>

int main() {
   int i, arr[50], sum, num;

   printf("Enter no of elements :");
   scanf("%d", &num);

   //Reading values into Array
   printf("\nEnter the values :\n");
   for (i = 0; i < num; i++)
   {
        printf("\nEnter %d value :: ",i+1);
        scanf("%d", &arr[i]);
   }

   //Computation of total
   sum = 0;
   for (i = 0; i < num; i++)
      sum = sum + arr[i];

   printf("\nPrinting of all elements of array :: \n");
   for (i = 0; i < num; i++)
      printf("\na[%d]=%d", i+1, arr[i]);

   //Printing of total
   printf("\n\nSum of all elements = %d", sum);

   return 0;
}