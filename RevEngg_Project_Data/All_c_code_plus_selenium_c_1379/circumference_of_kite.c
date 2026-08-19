#include <stdio.h>

int main() {
    float a, b, perimeter;

    // Prompt the user for the lengths of the sides
    printf("Enter the length of the first pair of equal sides: ");
    scanf("%f", &a);
    printf("Enter the length of the second pair of equal sides: ");
    scanf("%f", &b);

    // Calculate the perimeter
    perimeter = 2 * (a + b);

    // Display the result
    printf("Perimeter of the kite: %.2f\n", perimeter);

    return 0;
}
