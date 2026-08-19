/* Source: https://www.codezclub.com/c-swap-two-numbers-without-third-variable/ */
/*  C program to Swap two numbers without third variable  */

#include <stdio.h>

int main()
{
   int a, b;

   printf("Enter Ist integer to swap :: ");
   scanf("%d", &a);
   printf("\nEnter 2nd integer to swap :: ");
   scanf("%d", &b);
   printf("\nBefore Swapping, Numbers are :: \n");
   printf("\na = %d\tb = %d\n",a,b);

   a = a + b;
   b = a - b;
   a = a - b;

   printf("\nAfter Swapping, Numbers are :: \n");
   printf("\na = %d\tb = %d\n",a,b);

   return 0;
}