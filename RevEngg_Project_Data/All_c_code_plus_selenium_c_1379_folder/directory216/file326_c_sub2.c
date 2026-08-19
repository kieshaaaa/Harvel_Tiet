#include <stdio.h>
#include <math.h>

int main() {
    float radius, volume, piValue, fourThirds;

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    piValue = M_PI;
    fourThirds = 4.0f / 3.0f;
    volume = fourThirds * piValue * pow(radius, 3);

    printf("Volume of the sphere: ");
    printf("%.2f\n", volume);

    return 0;
}