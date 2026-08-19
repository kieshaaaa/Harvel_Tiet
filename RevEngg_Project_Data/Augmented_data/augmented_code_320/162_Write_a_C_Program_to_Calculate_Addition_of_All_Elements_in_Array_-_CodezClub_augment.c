/* Source: https://www.codezclub.com/write-a-c-program-to-calculate-addition-of-all-elements-in-array/ */
/* C Program to Calculate Addition of All Elements in Array */

#include<stdio.h>

int main() {
   int j, values[50], total, numElements;

   printf("Enter no of elements :");
   scanf("%d", &numElements);

   //Reading values into Array
   printf("\nEnter the values :\n");
   j = 0;
   while (j < numElements)
   {
        printf("\nEnter %d value :: ",j+1);
        scanf("%d", &values[j]);
        j++;
   }

   //Computation of total
   total = 0;
   j = 0;
   while (j < numElements) {
      total = total + values[j];
      j++;
   }

   printf("\nPrinting of all elements of array :: \n");
   j = 0;
   while (j < numElements) {
      printf("\na[%d]=%d", j+1, values[j]);
      j++;
   }

   //Printing of total
   printf("\n\nSum of all elements = %d", total);

   return 0;
}