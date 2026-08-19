#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846

int main() {
    float semiMajorAxis, semiMinorAxis, ellipseCircumference;

    printf("Enter the length of the semi-major axis (a): ");
    scanf("%f", &semiMajorAxis);
    printf("Enter the length of the semi-minor axis (b): ");
    scanf("%f", &semiMinorAxis);

    ellipseCircumference = PI * (3 * (semiMajorAxis + semiMinorAxis) - sqrt((3 * semiMajorAxis + semiMinorAxis) * (semiMajorAxis + 3 * semiMinorAxis)));

    printf("Approximate circumference of the ellipse: %.2f\n", ellipseCircumference);

    return 0;
}