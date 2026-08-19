#include <stdio.h>

int main() {
    float side, perimeter;

    // Prompt the user for the length of a side
    printf("Enter the length of the side: ");
    scanf("%f", &side);

    // Calculate the perimeter
    perimeter = 4 * side;

    // Display the result
    printf("Perimeter of the rhombus: %.2f\n", perimeter);

    return 0;
}
