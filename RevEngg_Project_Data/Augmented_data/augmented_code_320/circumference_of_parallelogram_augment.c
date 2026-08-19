#include <stdio.h>

int main() {
    float b, s, p;

    // Prompt the user for the lengths of the base and side of the parallelogram
    printf("Enter the length of the base of the parallelogram: ");
    scanf("%f", &b);
    printf("Enter the length of the side of the parallelogram: ");
    scanf("%f", &s);

    // Calculate the perimeter
    p = 2 * (b + s);

    // Display the result
    printf("Perimeter of the parallelogram: %.2f\n", p);

    return 0;
}