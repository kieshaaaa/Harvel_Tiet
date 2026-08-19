#include <stdio.h>

#define PI 3.14f

int main() {
    float degrees, radians;
    printf("Enter angle in degrees: ");
    scanf("%f", &degrees);
    radians = degrees * (PI / 180.0f);
    printf("Angle in radians: ");
    printf("%f\n", radians);
    return 0;
}