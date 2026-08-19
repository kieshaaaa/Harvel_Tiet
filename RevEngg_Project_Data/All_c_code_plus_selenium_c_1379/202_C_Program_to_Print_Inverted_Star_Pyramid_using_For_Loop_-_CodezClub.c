/* Source: https://www.codezclub.com/c-print-inverted-star-pyramid/ */
/*  C Program to Print Inverted Star Pyramid using For Loop  */

#include<stdio.h>

int main() {
   int i, j;
   char ch = '*';

   for (i = 10; i >= 0; i--) {
      printf("\n");
      for (j = 0; j < i; j++)
         printf("%c ", ch);
   }
   return(0);
}