#include <stdio.h>
#include <math.h>

int main() {
    float radius, volume, temp;

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    temp = pow(radius, 3);
    volume = temp * M_PI * 4.0f / 3.0f;

    printf("Volume of the sphere: ");
    printf("%.2f\n", volume);

    return 0;
}