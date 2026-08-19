#include <stdio.h>

void getInput(float *amount, float *rate, float *time) {
    printf("Enter principal (Amount): ");
    scanf("%f", amount);
    printf("Enter rate: ");
    scanf("%f", rate);
    printf("Enter time (in years): ");
    scanf("%f", time);
}

void calculateAndPrintSI(float amount, float rate, float time) {
    float si = (amount * rate * time) / 100;
    printf("\nSimple Interest is = %f", si);
}

int main() {
    float amount, rate, time;
    getInput(&amount, &rate, &time);
    calculateAndPrintSI(amount, rate, time);
    return 0;
}