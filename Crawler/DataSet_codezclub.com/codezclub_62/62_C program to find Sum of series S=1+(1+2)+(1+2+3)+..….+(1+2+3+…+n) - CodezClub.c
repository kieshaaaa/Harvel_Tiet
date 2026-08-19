/* Source: https://www.codezclub.com/c-find-sum-of-series/ */
/*  C program to find Sum of series S=1+(1+2)+(1+2+3)+..….+(1+2+3+…+n)  */

#include<stdio.h>

int main()
{
        int n,sum,sum1=0,i,j;

        printf("\nEnter value for n = ");
        scanf("%d",&n);

        for(i=1;i<=n;i++)
    {
                sum=0;
                for(j=1;j<=i;j++)
                {
                    sum=sum+j;
                }
                sum1=sum1+sum;
        }

        printf("\nThe Sum of Series up to Value [ %d ] = [ %d ]\n",n,sum1);

        return 0;
}