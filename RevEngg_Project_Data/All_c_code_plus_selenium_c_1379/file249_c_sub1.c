#include <stdio.h>
#define PI_VALUE 3.14159

int main() {
    float r, h, vol;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &r);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &h);

    vol = PI_VALUE * r * r * h;

    printf("Volume of the cylinder: ");
    printf("%.2f\n", vol);

    return 0;
}