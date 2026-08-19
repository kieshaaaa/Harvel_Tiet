#include<stdio.h>

int main() {
   int i, j, space;
   int count = 1, rows = 8;

   for (i = rows; i >= 1; --i) {
      for (space = 0; space < rows - i; ++space)
         printf("   ");
      for (j = i; j <= 2 * i - 1; ++j) {
         printf("%d  ", count);
         count++;
      }
      for (j = 0; j < i - 1; ++j) {
         printf("%d  ", count);
         count++;
      }
      printf("\n");
   }
   return 0;
}