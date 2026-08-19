/* Source: https://www.includehelp.com/c-programs/c-program-to-find-sum-and-average-of-two-numbers.aspx */
/* c program find sum and average of two numbers*/
#include <stdio.h>
 
int main()
{
    int num1, num2, sum;
    float average;
 
    printf("Enter first number :");
    scanf("%d",&num1);
    printf("Enter second number :");
    scanf("%d",&num2);
 
    sum = num1 + num2;
    average = (float)(num1 + num2) / 2;
 
    printf("\nSum of %d and %d is = %d", num1, num2, sum);
    printf("\nAverage of %d and %d is = %f", num1, num2, average);
 
    return 0;
}