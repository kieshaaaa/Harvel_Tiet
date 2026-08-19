#include <stdio.h>

int main() {
    float d1, d2, area;

    // Prompt the user for the lengths of the diagonals
    printf("Enter the length of the first diagonal: ");
    scanf("%f", &d1);
    printf("Enter the length of the second diagonal: ");
    scanf("%f", &d2);

    // Calculate the area
    area = (d1 * d2) / 2;

    // Display the result
    printf("Area of the kite: %.2f\n", area);

    return 0;
}
