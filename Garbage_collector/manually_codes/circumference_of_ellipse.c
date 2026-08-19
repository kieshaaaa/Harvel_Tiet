#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, circumference;

    // Prompt the user for the lengths of the semi-major and semi-minor axes
    printf("Enter the length of the semi-major axis (a): ");
    scanf("%f", &a);
    printf("Enter the length of the semi-minor axis (b): ");
    scanf("%f", &b);

    // Calculate the circumference using Ramanujan's approximation
    circumference = PI * (3 * (a + b) - sqrt((3 * a + b) * (a + 3 * b)));

    // Display the result
    printf("Approximate circumference of the ellipse: %.2f\n", circumference);

    return 0;
}
