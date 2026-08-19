#include <stdio.h>

int main() {
    float gradians, degrees;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    degrees = gradians * 0.9; // Direct calculation to convert gradians to degrees
    printf("Equivalent in degrees: ");
    printf("%f\n", degrees);
    return 0;
}