#include <stdio.h>

int main() {
    const float conversionFactor = 3.280839895f; // Approximate value for 1 meter to feet conversion
    float meters, feet;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    feet = meters * conversionFactor;

    printf("%.2f meters is equal to %.2f feet.\n", meters, feet);

    return 0;
}