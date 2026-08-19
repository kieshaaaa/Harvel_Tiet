#include <stdio.h>
#include <math.h>

int main() {
    float a, h, baseArea, volume;

    // Prompt the user for the side length of the base triangle and the height of the pyramid
    printf("Enter the side length of the base equilateral triangle: ");
    scanf("%f", &a);
    printf("Enter the height of the triangular pyramid: ");
    scanf("%f", &h);

    // Calculate the area of the base triangle
    baseArea = (sqrt(3) / 4) * a * a;

    // Calculate the volume of the triangular pyramid
    volume = (baseArea * h) / 3;

    // Display the result
    printf("Volume of the triangular pyramid: %.2f\n", volume);

    return 0;
}
