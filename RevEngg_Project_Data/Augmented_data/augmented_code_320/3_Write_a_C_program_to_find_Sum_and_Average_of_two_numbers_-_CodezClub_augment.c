/* Source: https://www.codezclub.com/c-find-sum-and-average-of-two-numbers/ */
/*  C program to find Sum and Average of two numbers  */

#include <stdio.h>

int main()
{
    int num1, num2, sum;
    float average;

    printf("Enter first number :");
    scanf("%d",&num1);
    printf("\nEnter second number :");
    scanf("%d",&num2);

    sum = num1 + num2;
    average = (float)(num1 + num2) / 2;

    printf("\nSum of %d and %d is = %d\n", num1, num2, sum);
    printf("\nAverage of %d and %d is = %f\n", num1, num2, average);

    return 0;
}