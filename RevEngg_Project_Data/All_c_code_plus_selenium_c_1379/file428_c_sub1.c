#include <stdio.h>

int main() {
    float weight, height, bmi;

    printf("Enter your weight in kilograms: ");
    scanf("%f", &weight);

    printf("Enter your height in centimeters: ");
    scanf("%f", &height);

    height = height / 100; // Convert cm to meters
    bmi = weight / (height * height);

    printf("Your BMI is: ");
    printf("%f\n", bmi);

    return 0;
}