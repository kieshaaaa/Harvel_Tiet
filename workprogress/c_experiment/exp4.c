#include<stdio.h>

int entry_point(int a, int *b)
{
  b = a + 1;
  return *b;
}

