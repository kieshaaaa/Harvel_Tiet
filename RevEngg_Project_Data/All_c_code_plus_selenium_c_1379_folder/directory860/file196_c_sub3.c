#include <stdio.h>

int main() {
    float distanceInKilometers;
    float distanceInMiles;

    printf("Kilometers to Miles Converter\n");
    printf("Enter the distance in kilometers: ");
    scanf("%f", &distanceInKilometers);

    distanceInMiles = distanceInKilometers * 0.621371;

    printf("%.2f kilometers is %.2f miles.\n", distanceInKilometers, distanceInMiles);

    return 0;
}