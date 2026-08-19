/* Source: https://www.includehelp.com/c-programs/compound-interest.aspx */
/*C program to calculate compound interest.*/

#include <stdio.h>
#include <math.h>

int main()
{
    float principalAmount, interestRate, timeYears, compoundInterest;

    printf("Enter principal: ");
    scanf("%f", &principalAmount);

    printf("Enter rate: ");
    scanf("%f", &interestRate);

    printf("Enter time in years: ");
    scanf("%f", &timeYears);

    // calculate compound interest

    compoundInterest = principalAmount * ((pow((1 + interestRate / 100), timeYears) - 1));

    printf("Compound interest is: %f\n", compoundInterest);

    return 0;
}