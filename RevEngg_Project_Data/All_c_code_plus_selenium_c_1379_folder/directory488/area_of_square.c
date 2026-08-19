#include <stdio.h>

int main() {
    float side, area;

    // Prompt the user for the side length of the square
    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    // Calculate the area
    area = side * side;

    // Display the result
    printf("Area of the square: %.2f\n", area);

    return 0;
}
