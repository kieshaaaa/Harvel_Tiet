#include <stdio.h>

int main() {
    float inches, feet, conversionFactor;

    printf("Enter the length in inches: ");
    scanf("%f", &inches);

    conversionFactor = 1.0 / 12.0;
    feet = inches * conversionFactor;

    printf("The length in feet is: ");
    printf("%.2f\n", feet);

    return 0;
}