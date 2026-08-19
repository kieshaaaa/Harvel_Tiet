#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r, volume;

    // Prompt for major and minor radii
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    // Calculate the volume
    volume = 2 * PI * PI * R * r * r;

    // Display the result
    printf("Volume of the torus: %.2f\n", volume);

    return 0;
}
