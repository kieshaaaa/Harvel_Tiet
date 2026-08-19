#include <stdio.h>
#include <math.h>

int main() {
    float side, area;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &side);

    // Calculate the area
    area = (sqrt(5 * (5 + 2 * sqrt(5))) * side * side) / 4;

    // Display the result
    printf("Area of the pentagon: %.2f\n", area);

    return 0;
}
