#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, area;

    // Prompt the user for the lengths of the semi-major and semi-minor axes
    printf("Enter the length of the semi-major axis (a): ");
    scanf("%f", &a);
    printf("Enter the length of the semi-minor axis (b): ");
    scanf("%f", &b);

    // Calculate the area
    area = PI * a * b;

    // Display the result
    printf("Area of the ellipse: %.2f\n", area);

    return 0;
}
