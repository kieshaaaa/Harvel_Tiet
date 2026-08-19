#include <stdio.h>

int main() {
    float radius;
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    printf("Volume of the sphere: ");
    printf("%.2f\n", (4.0f/3.0f) * 3.14159f * radius * radius * radius);

    return 0;
}