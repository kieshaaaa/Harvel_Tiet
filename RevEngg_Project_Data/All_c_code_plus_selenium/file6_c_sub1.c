#include <stdio.h>

int main() {
    float miles, kilometers;
    const float conversionFactor = 1.609344;

    printf("Enter value in Kilometers: ");
    scanf("%f", &kilometers);

    miles = kilometers / conversionFactor;

    printf("Kilometers: %.4f\n", kilometers);
    printf("Miles: %.4f\n", miles);

    return 0;
}