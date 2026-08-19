#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, area;

    printf("Radius: ");
    scanf("%f", &radius);
    printf("Height: ");
    scanf("%f", &height);

    area = PI * radius * (radius + sqrt(radius * radius + height * height));

    printf("The cone's surface area is: %.2f\n", area);

    return 0;
}