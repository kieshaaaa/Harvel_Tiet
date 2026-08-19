#include <stdio.h>

int main() {
    float gradians, degrees;
    printf("This program converts gradians to degrees.\n");
    printf("Please enter the angle in gradians: ");
    scanf("%f", &gradians);
    degrees = gradians * 0.9; // Direct conversion
    printf("Angle in degrees: ");
    printf("%f\n", degrees);
    return 0;
}