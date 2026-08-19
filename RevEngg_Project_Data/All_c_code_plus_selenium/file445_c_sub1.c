#include <stdio.h>
#include <math.h>

int main() {
    float principal, rate, time, amount, compoundInterest;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &time);

    float rateFraction = rate / 100;
    float totalGrowth = pow((1 + rateFraction), time);
    amount = principal * totalGrowth;
    compoundInterest = amount - principal;

    printf("Compound interest is: %f\n", compoundInterest);

    return 0;
}