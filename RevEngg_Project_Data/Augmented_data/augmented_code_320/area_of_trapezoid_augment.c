#include <stdio.h>

int main() {
    float base1, base2, height, area;

    // Prompt the user for the lengths of the parallel sides and height
    printf("Enter the length of side base1: ");
    scanf("%f", &base1);
    printf("Enter the length of side base2: ");
    scanf("%f", &base2);
    printf("Enter the height height: ");
    scanf("%f", &height);

    // Calculate the area
    area = (base1 + base2) * height / 2;

    // Display the result
    printf("Area of the trapezoid: %.2f\n", area);

    return 0;
}