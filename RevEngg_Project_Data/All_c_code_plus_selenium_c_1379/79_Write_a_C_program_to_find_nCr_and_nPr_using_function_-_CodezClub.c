/* Source: https://www.codezclub.com/c-find-ncr-and-npr/ */
/*  C program to find nCr and nPr using function  */

#include <stdio.h>

long factorial(int);
long find_ncr(int, int);
long find_npr(int, int);

int main()
{
   int n, r;
   long ncr, npr;

   printf("Enter the value of n :: ");
   scanf("%d",&n);
   printf("\nEnter the value of r :: ");
   scanf("%d",&r);

   ncr = find_ncr(n, r);
   npr = find_npr(n, r);

   printf("\n%dC%d = %ld\n", n, r, ncr);
   printf("\n%dP%d = %ld\n", n, r, npr);

   return 0;
}

long find_ncr(int n, int r) {
   long result;

   result = factorial(n)/(factorial(r)*factorial(n-r));

   return result;
}

long find_npr(int n, int r) {
   long result;

   result = factorial(n)/factorial(n-r);

   return result;
}

long factorial(int n) {
   int c;
   long result = 1;

   for (c = 1; c <= n; c++)
      result = result*c;

   return result;
}