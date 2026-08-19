#include <stdio.h>
#include <math.h>

int main() {
    double a, b, circumference;

    printf("Semi-major axis (a), Semi-minor axis (b): ");
    scanf("%lf %lf", &a, &b);

    // Simple circumference calculation with a basic formula
    circumference = 2 * 3.141592 * sqrt((a * a + b * b) / 2);

    printf("Circumference: %.2f\n", circumference);

    return 0;
}