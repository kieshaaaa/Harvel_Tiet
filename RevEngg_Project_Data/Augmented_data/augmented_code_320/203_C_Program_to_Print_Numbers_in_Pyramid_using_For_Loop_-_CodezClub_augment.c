/* Source: https://www.codezclub.com/c-print-numbers-in-pyramid/ */
/*  C Program to Print Numbers in Pyramid using While Loop  */

#include<stdio.h>

int main() {
   int a, b;
   int counter = 1;

   a = 0;
   while (a <= 8) {
      printf("\n");
      b = 0;
      while (b < a) {
         printf("%d  ", counter);
         counter++;
         b++;
      }
      a++;
   }
   return(0);
}