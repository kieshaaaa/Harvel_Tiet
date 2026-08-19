#include <stdio.h>

int main() {
    float meters;
    float feet;

    // Ask for input in meters
    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    // Convert meters to feet
    feet = meters * 3.28; // Multiply by the reciprocal of 0.3048 to convert to feet

    // Display the result
    printf("%f meters is equal to %f feet.\n", meters, feet);

    return 0;
}
