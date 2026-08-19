/* Source: https://www.codezclub.com/c-print-double-inverted-pyramid-pattern/ */
/*  C Program to Print Double Inverted Pyramid Pattern using While Loop  */

#include<stdio.h>

int main() {
   int a, b, c;
   int space = 0;
   int rows = 6;
   char ch = 'A';
   int temp;
   int diff[7] = { 0, 1, 3, 5, 7, 9, 11 };
   c = 0;
   //Step 0

   a = rows;
   while (a >= 0) {
      printf("\n");
      ch = 'A';

      //step 1
      b = a;
      while (b >= 0) {
         printf("%c\t", ch++);
         b--;
      }

      //step 2
      space = diff[c++];

      //step 3 - Double space
      b = 0;
      while (b < space) {
         printf("\t");
         b++;
      }

      ch = 'F' - (space / 2);

      if (space == 0) {
         temp = a - 1;
      } else {
         temp = a;
      }

      b = 0;
      while (b <= temp) { //step 4
         printf("%c\t", ch--);
         b++;
      }

      a--;
   }
   return (0);
}