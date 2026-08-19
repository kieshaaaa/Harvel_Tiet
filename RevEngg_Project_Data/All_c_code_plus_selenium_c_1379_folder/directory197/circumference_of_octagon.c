#include <stdio.h>

int main() {
    float side, perimeter;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &side);

    // Calculate the perimeter
    perimeter = 8 * side;

    // Display the result
    printf("Perimeter of the octagon: %.2f\n", perimeter);

    return 0;
}

