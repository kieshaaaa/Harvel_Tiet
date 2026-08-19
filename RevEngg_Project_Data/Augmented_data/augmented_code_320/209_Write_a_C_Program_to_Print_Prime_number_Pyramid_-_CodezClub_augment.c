/* Source: https://www.codezclub.com/c-print-prime-number-pyramid/ */
/*  C Program to Print Prime number Pyramid using While loop  */

#include<stdio.h>

int isPrime(int n);
int main() {
   int i, j;
   int num = 2;

   i = 0;
   while (i < 5) {
      printf("\n");
      j = 0;
      while (j <= i) {
         while (!isPrime(num)) {
            num++;
         }
         printf("%d  ", num++);
         j++;
      }
      i++;
   }
   return (0);
}

int isPrime(int n) {
   int i, flag;
   i = 2;
   while (i < n) {
      if (n % i != 0)
         flag = 1;
      else {
         flag = 0;
         break;
      }
      i++;
   }

   if (flag == 1 || n == 2)
      return (1);
   else
      return (0);
}