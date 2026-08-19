#include <stdio.h>

int main() {
    float gradians, degrees, conversionFactor;
    conversionFactor = 180.0 / 200.0; // Store the conversion factor in a variable
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    degrees = gradians * conversionFactor; // Use the conversion factor variable
    printf("Equivalent in degrees: ");
    printf("%f\n", degrees);
    return 0;
}