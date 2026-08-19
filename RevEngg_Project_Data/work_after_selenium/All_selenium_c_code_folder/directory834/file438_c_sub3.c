#include <stdio.h>

int main() {
    float amount, rate, time;

    printf("Enter principal (Amount): ");
    scanf("%f", &amount);
    printf("Enter rate: ");
    scanf("%f", &rate);
    printf("Enter time (in years): ");
    scanf("%f", &time);

    // Use 'amount' variable to hold the result of simple interest to save memory.
    amount = (amount * rate * time) / 100;

    printf("\nSimple Interest is = %f", amount);

    return 0;
}