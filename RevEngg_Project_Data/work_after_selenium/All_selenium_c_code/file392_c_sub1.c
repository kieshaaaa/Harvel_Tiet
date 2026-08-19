#include <stdio.h>
#define TWO_PI 6.28318

int main() {
    float radius, circumference;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    circumference = TWO_PI * radius;
    printf("Circumference of the circle: ");
    printf("%.2f\n", circumference);
    return 0;
}