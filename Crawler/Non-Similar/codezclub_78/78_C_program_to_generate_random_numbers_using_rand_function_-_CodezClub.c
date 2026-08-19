/* Source: https://www.codezclub.com/c-generate-random-numbers/ */
/*  C program to generate random numbers using rand function  */

#include <stdio.h>
#include <stdlib.h>

int main() {
  int c, n;

  printf("\nTen random numbers in range [1,100] :: \n\n");

  for (c = 1; c <= 10; c++)
 {
    n = rand() % 100 + 1;
    printf(" %d Random Number = %d\n",c,n);
  }

  return 0;
}