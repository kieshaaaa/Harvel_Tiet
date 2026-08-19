/* Source: https://www.includehelp.com/c-programs/compound-interest.aspx */
/*C program to calculate compound interest.*/

#include <stdio.h>
#include <math.h>

int main()
{
    float p, r, t, ci;

    printf("Enter principal: ");
    scanf("%f", &p);

    printf("Enter rate: ");
    scanf("%f", &r);

    printf("Enter time in years: ");
    scanf("%f", &t);

    // calculate compound interest

    ci = p * ((pow((1 + r / 100), t) - 1));

    printf("Compound interest is: %f\n", ci);

    return 0;
}