#include<stdio.h>

int entry_point(int a, int b, int *c, int *e)
{
  int d;
  *c = a + b;
  printf("*c value is %d\n",*c);
   d = *c + a + b;
  *e = d + *c + a + b;
  printf("*e value is %d\n",*e);

  return 0;
}
