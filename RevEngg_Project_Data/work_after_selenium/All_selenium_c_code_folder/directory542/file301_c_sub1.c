#include<stdio.h>

int main() {
   int i = 0, j;
   int count = 1;

   while (i <= 8) {
      printf("\n");
      j = 0;
      while (j < i) {
         printf("%d  ", count);
         count++;
         j++;
      }
      i++;
   }
   return 0;
}