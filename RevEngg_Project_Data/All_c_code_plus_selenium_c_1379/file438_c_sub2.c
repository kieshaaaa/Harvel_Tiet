#include <stdio.h>

int main() {
    float amount, rate, time, si;

    printf("Enter principal (Amount), rate and time (in years) separated by space: ");
    scanf("%f %f %f", &amount, &rate, &time);

    si = (amount * rate * time) / 100;

    printf("\nSimple Interest is = %f", si);

    return 0;
}