#include<stdio.h>

int main() {
    float height, weight, bmi;

    printf("Enter height (cm): ");
    scanf("%f", &height);
    printf("Enter weight (kg): ");
    scanf("%f", &weight);

    height /= 100; // Convert cm to meters directly
    bmi = weight / (height * height); // BMI calculation

    printf("BMI: %.1f - ", bmi);

    if(bmi < 16) {
        printf("Severely underweight\n");
    } else if(bmi < 18.5) {
        printf("Underweight\n");
    } else if(bmi < 25) {
        printf("Normal\n");
    } else if(bmi < 30) {
        printf("Overweight\n");
    } else {
        printf("Obese\n");
    }

    return 0;
}