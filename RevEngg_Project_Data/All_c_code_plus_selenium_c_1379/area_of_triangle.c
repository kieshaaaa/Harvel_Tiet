#include <stdio.h>

int main() {
    float base, height, area;

    // Prompt the user for the base and height of the triangle
    printf("Enter the base of the triangle: ");
    scanf("%f", &base);
    printf("Enter the height of the triangle: ");
    scanf("%f", &height);

    // Calculate the area
    area = 0.5 * base * height;

    // Display the result
    printf("Area of the triangle: %.2f\n", area);

    return 0;
}
