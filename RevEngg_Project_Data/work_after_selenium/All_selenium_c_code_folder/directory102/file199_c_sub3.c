#include<stdio.h>

int main() {
    float heightM, weight, bmi;

    printf("Enter height in centimeters: ");
    scanf("%f", &heightM);
    printf("Enter weight in kilograms: ");
    scanf("%f", &weight);

    heightM = heightM / 100; // Height conversion
    bmi = weight / (heightM * heightM); // BMI formula

    printf("Calculated BMI: %.2f\nCategory: ", bmi);

    if(bmi <= 18.5) {
        printf("Underweight");
    } else if(bmi > 18.5 && bmi <= 24.9) {
        printf("Normal");
    } else if(bmi >= 25 && bmi <= 29.9) {
        printf("Overweight");
    } else {
        printf("Obese");
    }

    printf("\n");

    return 0;
}