#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, time, ci;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &time);

    // Inline calculation for the final amount
    float amount = principal * pow((1 + rate / 100), time);
    ci = amount - principal;

    printf("Compound interest is: %f\n", ci);

    return 0;
}