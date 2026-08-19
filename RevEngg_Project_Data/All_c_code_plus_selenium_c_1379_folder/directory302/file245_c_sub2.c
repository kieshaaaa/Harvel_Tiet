#include <stdio.h>

int main() {
    float principal, rate, year, ci;
    int i;

    printf("Enter principal: ");
    scanf("%f", &principal);

    printf("Enter rate: ");
    scanf("%f", &rate);

    printf("Enter time in years: ");
    scanf("%f", &year);

    ci = principal;
    for(i = 0; i < year; i++) {
        ci = ci + (ci * rate / 100);
    }
    ci -= principal;

    printf("Compound interest is: %f\n", ci);

    return 0;
}