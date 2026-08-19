#include <stdio.h>

int main() {
    float s, p;

    // Prompt the user for the side length of the square
    printf("Enter the side length of the square: ");
    scanf("%f", &s);

    // Calculate the perimeter
    p = 4 * s;

    // Display the result
    printf("Perimeter of the square: %.2f\n", p);

    return 0;
}