#include <stdio.h>

int main() {
    float s, p;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &s);

    // Calculate the perimeter
    p = 6 * s;

    // Display the result
    printf("Perimeter of the hexagon: %.2f\n", p);

    return 0;
}