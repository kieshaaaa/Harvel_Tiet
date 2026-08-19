/* Source: https://www.codezclub.com/c-print-binary-numbers-pattern/ */
/*  C Program to Print Binary Numbers Pattern using For Loop  */

#include<stdio.h>

int main() {
   int i, j;
   int count = 1;

   for (i = 1; i <= 8; i++) {
      printf("\n");
      for (j = 1; j <= i; j++) {
         printf("%d ", count % 2);
         count++;
      }

      if (i % 2 == 0)
         count = 1;
      else
         count = 0;
   }
   return(0);
}