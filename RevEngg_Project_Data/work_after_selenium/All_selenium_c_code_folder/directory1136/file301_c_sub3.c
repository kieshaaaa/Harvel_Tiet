#include<stdio.h>

int main() {
   int rows = 8;
   int a = 0, b = 1, c, i, j;

   for (i = 1; i <= rows; i++) {
      printf("\n");
      for (j = 1; j <= i; j++) {
         if (i == 1) {
            printf("%d  ", a);
            continue;
         }
         if (i == 2 && j == 1) {
            printf("%d  ", b);
            continue;
         }
         c = a + b;
         a = b;
         b = c;
         printf("%d  ", c);
      }
   }
   return 0;
}