#include <stdio.h>

int main() {
    float degrees, gradians;
    printf("Enter angle in degrees: ");
    scanf("%f", &degrees);
    gradians = degrees * 1.11111111; // Directly using the conversion factor
    printf("Angle in gradians: %f\n", gradians);
    return 0;
}