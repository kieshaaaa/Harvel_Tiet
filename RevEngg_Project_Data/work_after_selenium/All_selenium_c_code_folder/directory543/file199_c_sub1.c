#include<stdio.h>

int main() {
    float heightInMeters, weight, bmi;

    printf("Enter your height in cm: ");
    scanf("%f", &heightInMeters);
    printf("Enter your weight in kg: ");
    scanf("%f", &weight);

    heightInMeters = heightInMeters / 100; // Convert cm to meters
    bmi = weight / (heightInMeters * heightInMeters); // Calculate BMI

    printf("Your BMI: %.2f\n", bmi);

    if(bmi < 18.5) {
        printf("Underweight\n");
    } else if(bmi < 25) {
        printf("Normal weight\n");
    } else if(bmi < 30) {
        printf("Overweight\n");
    } else {
        printf("Obesity\n");
    }

    return 0;
}