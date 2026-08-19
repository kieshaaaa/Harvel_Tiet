#include <stdio.h>

int main() {
    float cm; // Variable for centimeters
    float m; // Variable for meters

    // Prompt user for input
    printf("Enter length in centimeters: ");
    scanf("%f", &cm);

    // Convert centimeters to meters
    m = cm / 100;

    // Display the result
    printf("Length in meters: %.2f\n", m);

    return 0;
}