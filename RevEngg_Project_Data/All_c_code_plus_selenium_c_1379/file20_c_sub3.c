#include <stdio.h>
#include <math.h>

int main() {
    double a, b, circumference;
    const double PI = acos(-1); // Another way to get PI

    printf("Length of semi-major axis: ");
    scanf("%lf", &a);
    printf("Length of semi-minor axis: ");
    scanf("%lf", &b);

    // Use a straightforward approach with explicit constants
    double c = sqrt(a * a + b * b);
    circumference = 2 * PI * c / 2;

    printf("Ellipse circumference: %.2f\n", circumference);

    return 0;
}