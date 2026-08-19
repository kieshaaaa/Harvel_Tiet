#include <stdio.h>
#define PI 3.14159

int main() {
    float r, r_squared, circle_area;
    printf("Enter the radius of the circle: ");
    scanf("%f", &r);
    r_squared = r * r;
    circle_area = PI * r_squared;
    printf("Area of the circle: ");
    printf("%.2f\n", circle_area);
    return 0;
}