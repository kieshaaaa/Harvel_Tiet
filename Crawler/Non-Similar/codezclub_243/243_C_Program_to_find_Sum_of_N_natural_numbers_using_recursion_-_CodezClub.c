/* Source: https://www.codezclub.com/c-program-calculate-sum-n-natural-number/ */
/*  C Program to find Sum of N natural numbers using recursion  */

#include<stdio.h>

int sum(int);

int main()
{
    int n, s;

    printf("Enter the value of N :: ");
    scanf("%d", &n);

    s= sum(n);

    printf("\nThe Sum of [ 1 + ... + %d ] numbers is :: %d\n",n,s);

    return 0;
}

int sum(int x)
{
    if(x==0)
      return(0);

    else
      return(x + sum(x-1));
}