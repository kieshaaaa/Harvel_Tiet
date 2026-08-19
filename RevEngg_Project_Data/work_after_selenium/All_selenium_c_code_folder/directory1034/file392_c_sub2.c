#include <stdio.h>

int main() {
    float radius, circumference;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    circumference = 2 * 3.14159 * radius;
    printf("Circumference of the circle: ");
    printf("%.2f\n", circumference);
    return 0;
}