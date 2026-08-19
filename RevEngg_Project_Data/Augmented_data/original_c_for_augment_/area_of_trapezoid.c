#include <stdio.h>

int main() {
    float a, b, h, area;

    // Prompt the user for the lengths of the parallel sides and height
    printf("Enter the length of side a: ");
    scanf("%f", &a);
    printf("Enter the length of side b: ");
    scanf("%f", &b);
    printf("Enter the height h: ");
    scanf("%f", &h);

    // Calculate the area
    area = (a + b) * h / 2;

    // Display the result
    printf("Area of the trapezoid: %.2f\n", area);

    return 0;
}
