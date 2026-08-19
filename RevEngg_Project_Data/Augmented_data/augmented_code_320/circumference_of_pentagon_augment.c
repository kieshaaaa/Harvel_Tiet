#include <stdio.h>

int main() {
    float s, p;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &s);

    // Calculate the perimeter
    p = 5 * s;

    // Display the result
    printf("Perimeter of the pentagon: %.2f\n", p);

    return 0;
}