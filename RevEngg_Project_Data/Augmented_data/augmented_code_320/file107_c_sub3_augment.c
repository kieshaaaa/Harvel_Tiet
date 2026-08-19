#include <stdio.h>

int main() {
    float millimeters, inches;
    const float conversionFactor = 25.4;

    printf("Millimeters: ");
    scanf("%f", &millimeters);

    inches = millimeters / conversionFactor;

    printf("Inches: %f\n", inches);

    return 0;
}