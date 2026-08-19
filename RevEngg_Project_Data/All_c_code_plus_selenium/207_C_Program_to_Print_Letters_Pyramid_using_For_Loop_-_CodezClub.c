/* Source: https://www.codezclub.com/c-print-letters-pyramid/ */
/*  C Program to Print Letters Pyramid using For Loop  */

#include<stdio.h>

int main() {
   int i, j;
   char symbol = 'A';
   int num;
   int count = 1;

   printf("Enter the number of Letters in Pyramid ");
   printf("(less than 26) : ");
   scanf("%d", &num);

   for (i = 1; i <= num; i++) {
      for (j = 0; j <= (count / 2); j++) {
         printf("%c ", symbol++);
      }

      symbol = symbol - 2;

      for (j = 0; j < (count / 2); j++) {
         printf("%c ", symbol--);
      }

      count = count + 2;
      symbol = 'A';
      printf("\n");
   }
   return (0);
}