/* Source: https://www.includehelp.com/c-programs/c-program-get-remainder-without-using-operator.aspx */
/*
    * Program to get remainder without using % operator.
*/
 
#include <stdio.h>
int main()
{
    int num1, num2, remainder;
    printf("Enter first number :");
    scanf("%d",&num1);
    printf("Enter second number :");
    scanf("%d",&num2);
 
    remainder = num1 - (num1 / num2) * num2;
 
    printf("Remainder is = %d\n", remainder);
    return 0;
}