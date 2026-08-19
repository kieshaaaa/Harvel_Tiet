#include <stdio.h>

int main() {
    float meters;
    float yards;

    // Ask for input in meters
    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    // Convert meters to yards
    yards = meters * 1.09; // Multiply by the reciprocal of 0.9144 to convert to yards

    // Display the result
    printf("%f meters is equal to %f yards.\n", meters, yards);

    return 0;
}
