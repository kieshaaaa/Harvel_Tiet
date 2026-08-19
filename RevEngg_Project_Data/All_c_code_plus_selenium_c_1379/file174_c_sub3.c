#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846
#define POWER 1.6f
#define INVERSE_POWER (1 / POWER)
#define FACTOR 4

int main() {
    float a, b, c, surfaceArea, sumOfPowers;

    printf("Enter the semi-principal axis a: ");
    scanf("%f", &a);
    printf("Enter the semi-principal axis b: ");
    scanf("%f", &b);
    printf("Enter the semi-principal axis c: ");
    scanf("%f", &c);

    sumOfPowers = pow(a * b, POWER) + pow(a * c, POWER) + pow(b * c, POWER);
    surfaceArea = FACTOR * PI * pow(sumOfPowers / 3, INVERSE_POWER);

    printf("Approximate surface area: %.2f\n", surfaceArea);

    return 0;
}