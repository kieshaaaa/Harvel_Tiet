/* Source: https://www.codezclub.com/c-calculate-sum-product-of-all-digits/ */
/*  C program to Print Sum and Product of Digits of an integer  */

#include <stdio.h>

int main()
{
    int number, originalNumber;
    int digit, sum, product;

    printf("\nEnter any integer number :: ");
    scanf("%d",&number);

    originalNumber = number;

    /*Calculating Sum and Product*/
    sum = 0;
    product = 1;

    for(; number > 0;)
    {
        digit = number % 10; /*get digit*/
        sum += digit;
        product *= digit;
        number /= 10;
    }

    printf("\nSUM of Digits of Number [ %d ] : [ %d ].\n", originalNumber, sum);
    printf("\nPRODUCT of digits of Number [ %d ] : [ %d ].\n", originalNumber, product);

    return 0;
}