#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, area;

    // Prompt the user for the radius
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    // Calculate the area
    area = PI * radius * radius;

    // Display the result
    printf("Area of the circle: %.2f\n", area);

    return 0;
}
