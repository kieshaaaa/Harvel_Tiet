#include <stdio.h>

int main() {
    const float conversionFactor = 200.0 / 180.0;
    float degrees, gradians;
    printf("Enter angle in degrees: ");
    scanf("%f", &degrees);
    gradians = degrees * conversionFactor;
    printf("Angle in gradians: %f\n", gradians);
    return 0;
}