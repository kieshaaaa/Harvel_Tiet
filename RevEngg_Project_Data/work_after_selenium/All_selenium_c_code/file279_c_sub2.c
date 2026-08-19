#include <stdio.h>

int main() {
    const float conversionFactor = 0.621371;
    float velocityKmH, velocityMpH;

    printf("Input velocity in km/h: ");
    scanf("%f", &velocityKmH);
    velocityMpH = velocityKmH * conversionFactor;
    printf("Equivalent velocity in mph: %f\n", velocityMpH);
    return 0;
}