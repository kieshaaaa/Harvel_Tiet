#include <stdio.h>

int main() {
    float millimeters;
    float inches;

    // Ask for input in millimeters
    printf("Enter the length in millimeters: ");
    scanf("%f", &millimeters);

    // Convert millimeters to inches
    inches = millimeters * 0.039;

    // Display the result
    printf("%f millimeters is equal to %f inches.\n", millimeters, inches);

    return 0;
}
