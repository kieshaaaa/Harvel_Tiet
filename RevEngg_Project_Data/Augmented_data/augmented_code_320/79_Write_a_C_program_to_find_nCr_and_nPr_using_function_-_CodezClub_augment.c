/* Source: https://www.codezclub.com/c-find-ncr-and-npr/ */
/*  C program to find nCr and nPr using function  */

#include <stdio.h>

long factorial_calc(int);
long find_ncr_calc(int, int);
long find_npr_calc(int, int);

int main()
{
   int n, r;
   long ncr, npr;

   printf("Enter the value of n :: ");
   scanf("%d",&n);
   printf("\nEnter the value of r :: ");
   scanf("%d",&r);

   ncr = find_ncr_calc(n, r);
   npr = find_npr_calc(n, r);

   printf("\n%dC%d = %ld\n", n, r, ncr);
   printf("\n%dP%d = %ld\n", n, r, npr);

   return 0;
}

long find_ncr_calc(int n, int r) {
   long result;

   result = factorial_calc(n)/(factorial_calc(r)*factorial_calc(n-r));

   return result;
}

long find_npr_calc(int n, int r) {
   long result;

   result = factorial_calc(n)/factorial_calc(n-r);

   return result;
}

long factorial_calc(int n) {
   int c = 1;
   long result = 1;

   while (c <= n) {
      result = result*c;
      c++;
   }

   return result;
}