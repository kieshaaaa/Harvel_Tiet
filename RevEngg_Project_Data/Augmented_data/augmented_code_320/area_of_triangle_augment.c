#include <stdio.h>

int main() {
    float b, h, a;

    // Prompt the user for the base and height of the triangle
    printf("Enter the base of the triangle: ");
    scanf("%f", &b);
    printf("Enter the height of the triangle: ");
    scanf("%f", &h);

    // Calculate the area
    a = 0.5 * b * h;

    // Display the result
    printf("Area of the triangle: %.2f\n", a);

    return 0;
}