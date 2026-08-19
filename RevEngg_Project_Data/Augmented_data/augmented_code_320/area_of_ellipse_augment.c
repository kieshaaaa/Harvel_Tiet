#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float semiMajorAxis, semiMinorAxis, ellipseArea;

    printf("Enter the length of the semi-major axis (a): ");
    scanf("%f", &semiMajorAxis);
    printf("Enter the length of the semi-minor axis (b): ");
    scanf("%f", &semiMinorAxis);

    ellipseArea = PI * semiMajorAxis * semiMinorAxis;

    printf("Area of the ellipse: %.2f\n", ellipseArea);

    return 0;
}