#include <stdio.h>

int main() {
    float s, p;

    // Prompt the user for the length of a side
    printf("Enter the length of the side: ");
    scanf("%f", &s);

    // Calculate the perimeter
    p = 4 * s;

    // Display the result
    printf("Perimeter of the rhombus: %.2f\n", p);

    return 0;
}