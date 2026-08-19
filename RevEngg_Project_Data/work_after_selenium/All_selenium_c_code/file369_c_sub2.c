#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float dimensions[3], volume;

    printf("Enter semi-principal axes a, b, and c: ");
    scanf("%f %f %f", &dimensions[0], &dimensions[1], &dimensions[2]);

    volume = (4.0 / 3.0) * PI * dimensions[0] * dimensions[1] * dimensions[2];

    printf("Volume: ");
    printf("%.2f\n", volume);

    return 0;
}