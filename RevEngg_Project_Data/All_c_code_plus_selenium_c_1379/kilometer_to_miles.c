#include <stdio.h>

int main() {
    float kilometers;
    float miles;

    // Ask for input in kilometers
    printf("Enter the distance in kilometers: ");
    scanf("%f", &kilometers);

    // Convert kilometers to miles
    miles = kilometers * 0.621; // Multiply by the reciprocal of 1.60934 to convert to miles

    // Display the result
    printf("%f kilometers is equal to %f miles.\n", kilometers, miles);

    return 0;
}
