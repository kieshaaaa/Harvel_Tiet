#include <stdio.h>

int main() {
    float outerRadius, innerRadius, circumference;

    // Prompt for outer and inner radii
    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);
    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    // Calculate the total circumference (sum of outer and inner circumferences)
    circumference = 2 * 3.14159 * (outerRadius + innerRadius);

    // Display the result
    printf("Total circumference of the annulus: %.2f\n", circumference);

    return 0;
}
