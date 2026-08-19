#include <stdio.h>
#define PI_CONSTANT 3.14159

int main() {
    float rad, ht, areaOfCircle, cylVol;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &rad);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &ht);

    areaOfCircle = PI_CONSTANT * rad * rad;
    cylVol = areaOfCircle * ht;

    printf("Volume of the cylinder: ");
    printf("%.2f\n", cylVol);

    return 0;
}