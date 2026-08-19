#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, time, base, exponent, ci;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &time);

    rate = rate / 100; // Convert percentage to a decimal
    base = 1 + rate; // Calculate the base of the power operation
    exponent = pow(base, time); // Calculate the exponentiation
    ci = principal * (exponent - 1); // Finally, calculate the compound interest

    printf("Compound interest is: %f\n", ci);

    return 0;
}