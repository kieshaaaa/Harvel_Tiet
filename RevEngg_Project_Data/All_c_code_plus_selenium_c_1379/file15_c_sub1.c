#include <stdio.h>

int main() {
    float radius;
    const float PI = 3.14159; // Using const for pi

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    float volume = (4.0/3.0) * PI * radius * radius * radius;

    printf("Volume of the sphere: ");
    printf("%.2f\n", volume);

    return 0;
}