/* Source: https://www.codezclub.com/c-program-calculate-sum-of-digits-using-recursion/ */
/*  C program to calculate sum of digits using recursion  */

#include <stdio.h>

//function to calculate sum of all digits
int sumDigits(int num)
{
    static int sum=0;
    if(num>0)
    {
        sum+=(num%10); //add digit into sum
        sumDigits(num/10);
    }
    else
    {
        return sum;
    }
}
int main()
{
    int number,sum;

    printf("Enter any number :: ");
    scanf("%d",&number);

    sum=sumDigits(number);

    printf("\nSum of all digits of %d are :: %d\n",number,sum);

    return 0;
}