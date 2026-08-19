/* Source: https://www.codezclub.com/write-a-c-program-to-find-power-of-a-number-using-recursion/ */
/*  C program to Calculate Power of a Number using recursion */

#include<stdio.h>

int i=1;
long int sum=1;
long int power(int num,int pow);

int main()
{
        int pow,num;
        long int res;
        long int power(int,int);

        printf("Enter any number :: ");
        scanf("%d",&num);

        printf("\nEnter power to the number [ %d ] :: ",num);
        scanf("%d",&pow);

        res=power(num,pow);

        printf("\n%d to the power %d [ %d ^ %d ] is :: %ld\n",num,pow,num,pow,res);

        return 0;
}

long int power(int num,int pow)
{
        if(i<=pow)
    {

                sum=sum*num;
                power(num,pow-1);

        }
        else
              return sum;
}