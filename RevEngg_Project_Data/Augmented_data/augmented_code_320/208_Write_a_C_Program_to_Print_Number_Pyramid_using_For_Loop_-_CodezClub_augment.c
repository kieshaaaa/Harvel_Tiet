/* Source: https://www.codezclub.com/c-print-number-pyramid/ */
/*  C Program to Print Number Pyramid using While Loop */

#include<stdio.h>

int main() {
   int rows, cols;
   int num;

   printf("Enter the number of Digits :");
   scanf("%d", &num);

   rows = 0;
   while (rows <= num) {
      cols = 0;
      while (cols < rows) {
         printf("%d ", rows);
         cols++;
      }
      printf("\n");
      rows++;
   }
   return (0);
}