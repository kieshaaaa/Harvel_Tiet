#include <stdio.h>
#include <math.h>

int main() {
    float side, area;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &side);

    // Calculate the area
    area = (3 * sqrt(3) / 2) * (side * side);

    // Display the result
    printf("Area of the hexagon: %.2f\n", area);

    return 0;
}
