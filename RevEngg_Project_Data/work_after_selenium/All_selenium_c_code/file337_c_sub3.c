#include <stdio.h>

int main() {
    float inputCm; // To hold the input in centimeters
    float outputM; // To hold the converted value in meters

    // Get the length from the user
    printf("Enter the length in cm: ");
    scanf("%f", &inputCm);

    // Perform the conversion
    outputM = inputCm / 100.0;

    // Output the result to the user
    printf("In meters: %.2f\n", outputM);

    return 0;
}