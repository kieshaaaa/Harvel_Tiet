#include <stdio.h>
#include <math.h>

int main() {
    float a, surfaceArea;

    // Prompt the user for the side length of the pyramid
    printf("Enter the side length of the triangular pyramid: ");
    scanf("%f", &a);

    // Calculate the surface area
    surfaceArea = sqrt(3) * a * a;

    // Display the result
    printf("Surface area of the triangular pyramid: %.2f\n", surfaceArea);

    return 0;
}
