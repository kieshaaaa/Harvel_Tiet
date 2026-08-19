#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c, p = 3.14159265358979323846, abPow, acPow, bcPow, meanPow, surfaceArea;

    printf("Enter the semi-principal axis a: ");
    scanf("%f", &a);
    printf("Enter the semi-principal axis b: ");
    scanf("%f", &b);
    printf("Enter the semi-principal axis c: ");
    scanf("%f", &c);

    abPow = pow(a * b, 1.6f);
    acPow = pow(a * c, 1.6f);
    bcPow = pow(b * c, 1.6f);
    meanPow = (abPow + acPow + bcPow) / 3;
    surfaceArea = 4 * p * pow(meanPow, 1 / 1.6f);

    printf("Approximate surface area: %.2f\n", surfaceArea);

    return 0;
}