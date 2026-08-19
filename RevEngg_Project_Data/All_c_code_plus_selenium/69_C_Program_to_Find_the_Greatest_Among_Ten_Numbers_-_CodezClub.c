/* Source: https://www.codezclub.com/c-accept-ten-numbers-display-largest-one/ */
/*  C Program to Find the Greatest Among Ten Numbers  */

#include<stdio.h>

int main()
{
  int num[10],grt,i=0,j=1;

  printf("\nEnter 10 numbers below :: \n");
  for(i=0;i<10;i++,j++)
  {
      printf("\nEnter number %d :: ",j);
      scanf("%d",&num[i]);
  }

  grt=num[0];
  i=0,j=1;

  for(;i<9;i++)
  {
    if(grt<num[i+1])
    {
        grt=num[i+1];
    }
  }

  printf("\nThe largest number among 10 Numbers is :: [ %d ]\n",grt);

  return 0;
}