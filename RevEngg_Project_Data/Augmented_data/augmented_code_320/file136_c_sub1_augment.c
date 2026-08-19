#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float rad, h, slantHeight, surfaceArea;

    printf("Enter the radius and height of the cone: ");
    scanf("%f %f", &rad, &h);

    slantHeight = sqrt(pow(rad, 2) + pow(h, 2));
    surfaceArea = PI * rad * (rad + slantHeight);

    printf("Radius: %.2f, Height: %.2f\n", rad, h);
    printf("Surface Area: %.2f\n", surfaceArea);

    return 0;
}