#include <stdio.h>

int main() {
    float s, a;

    // Prompt the user for the side length of the square
    printf("Enter the side length of the square: ");
    scanf("%f", &s);

    // Calculate the area
    a = s * s;

    // Display the result
    printf("Area of the square: %.2f\n", a);

    return 0;
}