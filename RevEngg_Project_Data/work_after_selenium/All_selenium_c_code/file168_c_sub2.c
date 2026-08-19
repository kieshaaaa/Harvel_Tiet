#include <stdio.h>

int main() {
    float radians;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    printf("Angle in degrees: ");
    printf("%.2f\n", (float)(radians * (180.0f / 3.14f)));
    return 0;
}