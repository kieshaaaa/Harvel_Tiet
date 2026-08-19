#include <stdio.h>

int main() {
    float meters, feet, backToMeters;
    const float metersToFeet = 3.28084f;
    const float feetToMeters = 0.3048f;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    feet = meters * metersToFeet;
    backToMeters = feet * feetToMeters;

    printf("%.2f meters is equal to %.2f feet.\n", meters, feet);
    printf("Verifying conversion, %.2f feet is equal to %.2f meters.\n", feet, backToMeters);

    return 0;
}