#include <stdio.h>

#define INCH_TO_CM 2.54

int main() {
    float value;
    printf("Enter the value in inches: ");
    scanf("%f", &value);
    float result = value * INCH_TO_CM;
    printf("The value in centimeters is: %.4f\n", result);
    return 0;
}