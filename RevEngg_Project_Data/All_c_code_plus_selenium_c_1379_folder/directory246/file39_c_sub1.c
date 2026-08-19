#include<stdio.h>

int main() {
    int num1 = 10;
    float num2 = 20.5;
    int num1_copy = num1;
    float num2_copy = num2;

    // Modifying the variables
    num1 += 5;
    num2 += 2.5;

    // Displaying original and modified values
    printf("Original value of num1: %d\n", num1_copy);
    printf("Modified value of num1: %d\n", num1);
    printf("Original value of num2: %f\n", num2_copy);
    printf("Modified value of num2: %f\n", num2);

    return 0;
}