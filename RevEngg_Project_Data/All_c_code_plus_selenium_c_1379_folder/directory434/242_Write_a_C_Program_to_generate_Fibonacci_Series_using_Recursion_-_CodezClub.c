/* Source: https://www.codezclub.com/c-program-print-fibonacci-series-using-recursion/ */
/* C Program to generate Fibonacci Series using Recursion  */

#include<stdio.h>

void fibonacci(int,int,int);

int main()
{
        int a=0,b=1,n;

        printf("Enter value of N :: ");
        scanf("%d",&n);

        printf("\nFibonacci Series upto [ %d ] Numbers are :: \n\n",n);

        fibonacci(a,b,n);

        printf("\n");

        return 0;
}


void fibonacci(int a,int b, int n){
        if(n!=0)
    {
                printf("%d   ",a);

                fibonacci(b,a+b,n-1);
        }
}