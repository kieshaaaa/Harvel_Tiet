/* Source: https://www.codezclub.com/c-accept-ten-numbers-display-lowest-one/ */
/*  C Program to Find the Smallest Among Ten Numbers  */

#include<stdio.h>

int main()
{
      int num[10],low,i=0,j=1;
      printf("\nEnter 10 numbers below :: \n");
      for(i=0;i<10;i++,j++)
      {
          printf("\nEnter number %d :: ",j);
          scanf("%d",&num[i]);
      }

      low=num[0];

      i=0,j=1;

      for(;i<9;i++)
      {
        if(low>num[i+1])
        {
            low=num[i+1];
        }
      }

      printf("\nThe Smallest Number among 10 Numbers is :: [ %d ]\n",low);

      return 0;
}