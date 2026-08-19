#include <stdio.h>

int main() {
    float radians, degrees;
    const float PI = 3.14f;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * (180.0f / PI);
    printf("Angle in degrees: ");
    printf("%.2f\n", degrees);
    return 0;
}