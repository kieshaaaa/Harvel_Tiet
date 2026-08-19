#include <stdio.h>

int main() {
    float weight, heightCm, heightM, bmi;

    printf("Please enter weight (kg): ");
    scanf("%f", &weight);

    printf("Please enter height (cm): ");
    scanf("%f", &heightCm);

    heightM = heightCm / 100; // conversion to meters
    bmi = weight / (heightM * heightM); // calculating BMI

    printf("Calculated BMI: ");
    printf("%f\n", bmi);

    return 0;
}