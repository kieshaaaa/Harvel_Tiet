#include <stdio.h>
#include <math.h>

int main() {
    float radius, volume, radiusCubed;

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    radiusCubed = radius * radius * radius;
    volume = (4.0f/3.0f) * M_PI * radiusCubed;

    printf("Volume of the sphere: ");
    printf("%.2f\n", volume);

    return 0;
}