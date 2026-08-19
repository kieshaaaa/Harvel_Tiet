#include <stdio.h>

int main() {
    float outerRad, innerRad, annulusArea;

    // Prompt for outer and inner radii
    printf("Enter the outer radius: ");
    scanf("%f", &outerRad);
    printf("Enter the inner radius: ");
    scanf("%f", &innerRad);

    // Calculate the area of the annulus
    annulusArea = 3.14159 * (outerRad * outerRad - innerRad * innerRad);

    // Display the result
    printf("Area of the annulus: %.2f\n", annulusArea);

    return 0;
}