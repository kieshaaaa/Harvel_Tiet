#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, circumference;

    // Prompt the user for the radius
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    // Calculate the circumference
    circumference = 2 * PI * radius;

    // Display the result
    printf("Circumference of the circle: %.2f\n", circumference);

    return 0;
}
