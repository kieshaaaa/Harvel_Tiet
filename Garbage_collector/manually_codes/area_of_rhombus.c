#include <stdio.h>

int main() {
    float d1, d2, area;

    // Prompt the user for the lengths of the diagonals
    printf("Enter the length of the first diagonal (d1): ");
    scanf("%f", &d1);
    printf("Enter the length of the second diagonal (d2): ");
    scanf("%f", &d2);

    // Calculate the area
    area = (d1 * d2) / 2;

    // Display the result
    printf("Area of the rhombus: %.2f\n", area);

    return 0;
}
