#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, c, volume;

    // Prompt for semi-principal axes a, b, and c
    printf("Enter the semi-principal axis a: ");
    scanf("%f", &a);
    printf("Enter the semi-principal axis b: ");
    scanf("%f", &b);
    printf("Enter the semi-principal axis c: ");
    scanf("%f", &c);

    // Calculate the volume
    volume = (4.0 / 3.0) * PI * a * b * c;

    // Display the result
    printf("Volume of the ellipsoid: %.2f\n", volume);

    return 0;
}
