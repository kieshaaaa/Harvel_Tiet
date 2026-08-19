#include <stdio.h>

int main() {
    float length, width, perimeter;

    // Prompt the user for the length and width of the rectangle
    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    // Calculate the perimeter
    perimeter = 2 * (length + width);

    // Display the result
    printf("Perimeter of the rectangle: %.2f\n", perimeter);

    return 0;
}
