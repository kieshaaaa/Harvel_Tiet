#include <stdio.h>

int main() {
    float kilometers;
    float miles;
    const float conversionFactor = 0.621371;

    printf("Enter the distance in kilometers: ");
    scanf("%f", &kilometers);

    miles = kilometers * conversionFactor;

    printf("%.2f kilometers is equal to %.2f miles.\n", kilometers, miles);

    return 0;
}