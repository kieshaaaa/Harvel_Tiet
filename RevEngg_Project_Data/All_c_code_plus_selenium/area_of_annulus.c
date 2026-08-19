#include <stdio.h>

int main() {
    float outerRadius, innerRadius, area;

    // Prompt for outer and inner radii
    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);
    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    // Calculate the area of the annulus
    area = 3.14159 * (outerRadius * outerRadius - innerRadius * innerRadius);

    // Display the result
    printf("Area of the annulus: %.2f\n", area);

    return 0;
}
