#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, year, amount, ci;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &year);

    // calculate amount after compound interest
    amount = principal * pow((1 + rate / 100), year);
    ci = amount - principal;

    printf("Compound interest is: %f\n", ci);

    return 0;
}