#include <stdio.h>

int main() {
    float lengthInCm; // Stores length in centimeters
    float lengthInM; // Stores length in meters

    // Asking for user input
    printf("Input the length in centimeters: ");
    scanf("%f", &lengthInCm);

    // Conversion process
    lengthInM = lengthInCm / 100.0;

    // Displaying the conversion
    printf("Equivalent in meters: %.2f\n", lengthInM);

    // Prompt to exit
    printf("Press Enter to exit.");
    while (getchar() != '\n'); // Clear the input buffer
    getchar(); // Wait for enter key

    return 0;
}