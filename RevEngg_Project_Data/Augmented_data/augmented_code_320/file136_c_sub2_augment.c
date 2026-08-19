#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float rad, h, surfaceArea;

    printf("Radius: ");
    scanf("%f", &rad);
    printf("Height: ");
    scanf("%f", &h);

    surfaceArea = PI * rad * (rad + sqrt(rad * rad + h * h));

    printf("The cone's surface area is: %.2f\n", surfaceArea);

    return 0;
}