#include <stdio.h>

int main() {
    float side1, side2, side3, perimeter;

    // Prompt the user for the lengths of the sides of the triangle
    printf("Enter the length of the first side of the triangle: ");
    scanf("%f", &side1);
    printf("Enter the length of the second side of the triangle: ");
    scanf("%f", &side2);
    printf("Enter the length of the third side of the triangle: ");
    scanf("%f", &side3);

    // Calculate the perimeter
    perimeter = side1 + side2 + side3;

    // Display the result
    printf("Perimeter of the triangle: %.2f\n", perimeter);

    return 0;
}
