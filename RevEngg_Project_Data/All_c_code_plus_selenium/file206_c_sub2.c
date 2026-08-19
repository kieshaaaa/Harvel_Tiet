#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, height, volume;

    // Input
    printf("Input radius: ");
    scanf("%f", &radius);
    printf("Input height: ");
    scanf("%f", &height);

    // Calculation
    volume = (1.0/3) * PI * radius * radius * height;

    // Output
    printf("Cone volume: ");
    printf("%.2f\n", volume);

    return 0;
}