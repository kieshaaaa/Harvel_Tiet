#include <stdio.h>

int main() {
    float side1, side2, perimeter;

    // Prompt the user for the lengths of the sides
    printf("Enter the length of the first pair of equal sides: ");
    scanf("%f", &side1);
    printf("Enter the length of the second pair of equal sides: ");
    scanf("%f", &side2);

    // Calculate the perimeter
    perimeter = 2 * (side1 + side2);

    // Display the result
    printf("Perimeter of the kite: %.2f\n", perimeter);

    return 0;
}