#include <stdio.h>

int main() {
    float base, side, perimeter;

    // Prompt the user for the lengths of the base and side of the parallelogram
    printf("Enter the length of the base of the parallelogram: ");
    scanf("%f", &base);
    printf("Enter the length of the side of the parallelogram: ");
    scanf("%f", &side);

    // Calculate the perimeter
    perimeter = 2 * (base + side);

    // Display the result
    printf("Perimeter of the parallelogram: %.2f\n", perimeter);

    return 0;
}
