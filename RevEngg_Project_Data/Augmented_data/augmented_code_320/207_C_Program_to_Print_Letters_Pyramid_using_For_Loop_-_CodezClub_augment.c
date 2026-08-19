/* Source: https://www.codezclub.com/c-print-letters-pyramid/ */
/*  C Program to Print Letters Pyramid using While Loop  */

#include<stdio.h>

int main() {
   int i, j;
   char sym = 'A';
   int n;
   int cnt = 1;

   printf("Enter the number of Letters in Pyramid ");
   printf("(less than 26) : ");
   scanf("%d", &n);

   i = 1;
   while (i <= n) {
      j = 0;
      while (j <= (cnt / 2)) {
         printf("%c ", sym++);
         j++;
      }

      sym = sym - 2;

      j = 0;
      while (j < (cnt / 2)) {
         printf("%c ", sym--);
         j++;
      }

      cnt = cnt + 2;
      sym = 'A';
      printf("\n");
      i++;
   }
   return (0);
}