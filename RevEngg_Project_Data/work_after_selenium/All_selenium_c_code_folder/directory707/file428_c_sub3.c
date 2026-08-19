#include <stdio.h>

int main() {
    float weight, height, meterHeight, squareMeterHeight, bmi;

    printf("Input your weight in kilograms: ");
    scanf("%f", &weight);

    printf("Input your height in centimeters: ");
    scanf("%f", &height);

    meterHeight = height / 100; // Convert height to meters
    squareMeterHeight = meterHeight * meterHeight; // Square of height in meters
    bmi = weight / squareMeterHeight; // Calculate BMI

    printf("BMI Value: ");
    printf("%f\n", bmi);

    return 0;
}