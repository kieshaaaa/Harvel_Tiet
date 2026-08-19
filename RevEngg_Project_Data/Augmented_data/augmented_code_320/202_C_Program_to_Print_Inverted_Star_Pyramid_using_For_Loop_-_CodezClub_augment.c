/* Source: https://www.codezclub.com/c-print-inverted-star-pyramid/ */
/*  C Program to Print Inverted Star Pyramid using While Loop  */

#include <stdio.h>

int main() {
   int rows, cols;
   char star = '*';

   rows = 10;
   while (rows >= 0) {
      printf("\n");
      cols = 0;
      while (cols < rows) {
         printf("%c ", star);
         cols++;
      }
      rows--;
   }
   return 0;
}