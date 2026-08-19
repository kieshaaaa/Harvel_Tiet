#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, c, volume;

    printf("Enter the semi-principal axes a, b, and c: ");
    scanf("%f %f %f", &a, &b, &c);

    volume = (4.0 / 3.0) * PI * a * b * c;

    printf("Ellipsoid Volume: ");
    printf("%.2f\n", volume);

    return 0;
}