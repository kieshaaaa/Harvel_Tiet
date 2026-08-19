/* Source: https://www.codezclub.com/write-a-c-program-for-finding-remainder/ */
/*  C program find Remainder without using modulus operator  */

#include <stdio.h>

int main()
{
    int num1, num2, remainder;

    printf("\nEnter first number :: ");
    scanf("%d",&num1);
    printf("\nEnter second number ::");
    scanf("%d",&num2);

    remainder = num1 - (num1 / num2) * num2;

    printf("\nRemainder of [ %d ] & [ %d } is = %d\n", num1, num2, remainder);

    return 0;
}