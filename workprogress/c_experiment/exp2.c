#include<stdio.h>

int entry_point(int a, int *b)
{
  *b = a + 1;
  printf("*b values is : %d",*b);
  return 0;
}

