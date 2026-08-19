/* Source: https://www.codezclub.com/c-get-address-array-using-pointers/ */
/*  C Program to Get Address of array using Pointers  */

#include <stdio.h>

int main()
{
  char multiple[] = "CodezClub";

  char *p = &multiple[0];
  printf("\nThe address of the first array element  : %p \n", p);

  p = multiple;
  printf("\nThe address obtained from the array name: %p\n", p);

  return 0;
}