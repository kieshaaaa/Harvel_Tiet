#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, circumference;

    printf("Enter the length of the semi-major axis (a): ");
    scanf("%f", &a);
    printf("Enter the length of the semi-minor axis (b): ");
    scanf("%f", &b);

    // Using a different approximation formula for the ellipse circumference
    float h = pow((a - b), 2) / pow((a + b), 2);
    circumference = PI * (a + b) * (1 + (3 * h) / (10 + sqrt(4 - 3 * h)));

    printf("Approximate circumference of the ellipse: %.2f\n", circumference);

    return 0;
}