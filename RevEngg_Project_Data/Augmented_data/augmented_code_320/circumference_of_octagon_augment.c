#include <stdio.h>

int main() {
    float sideLength, perimeter;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &sideLength);

    // Calculate the perimeter
    perimeter = 8 * sideLength;

    // Display the result
    printf("Perimeter of the octagon: %.2f\n", perimeter);

    return 0;
}