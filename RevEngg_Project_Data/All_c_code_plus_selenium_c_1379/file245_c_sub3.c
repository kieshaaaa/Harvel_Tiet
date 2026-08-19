#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, year, ratePlusOne, ci;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &year);

    ratePlusOne = 1 + rate / 100;

    ci = principal * (pow(ratePlusOne, year) - 1);

    printf("Compound interest is: %f\n", ci);

    return 0;
}