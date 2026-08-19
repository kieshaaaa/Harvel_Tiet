#include <stdio.h>

int main() {
    float side, perimeter;

    // Prompt the user for the side length of the square
    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    // Calculate the perimeter
    perimeter = 4 * side;

    // Display the result
    printf("Perimeter of the square: %.2f\n", perimeter);

    return 0;
}
