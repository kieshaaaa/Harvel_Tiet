#include <stdio.h>
#define PI 3.14159

int main() {
    float rad, circ;

    printf("Enter the radius of the circle: ");
    scanf("%f", &rad);

    circ = 2 * PI * rad;

    printf("Circumference of the circle: %.2f\n", circ);

    return 0;
}