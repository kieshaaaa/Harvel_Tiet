#include <stdio.h>
#include <math.h>

int main() {
    float side, area;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &side);

    // Calculate the area
    area = 2 * (1 + sqrt(2)) * side * side;

    // Display the result
    printf("Area of the octagon: %.2f\n", area);

    return 0;
}
