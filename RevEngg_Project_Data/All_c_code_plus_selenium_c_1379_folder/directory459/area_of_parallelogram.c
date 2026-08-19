#include <stdio.h>

int main() {
    float base, height, area;

    // Prompt the user for the base and height of the parallelogram
    printf("Enter the base of the parallelogram: ");
    scanf("%f", &base);
    printf("Enter the height of the parallelogram: ");
    scanf("%f", &height);

    // Calculate the area
    area = base * height;

    // Display the result
    printf("Area of the parallelogram: %.2f\n", area);

    return 0;
}
