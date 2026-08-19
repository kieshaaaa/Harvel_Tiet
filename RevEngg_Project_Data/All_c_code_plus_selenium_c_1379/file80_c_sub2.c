#include <stdio.h>

int main() {
    float base, height;
    printf("Enter the base and height of the triangle separated by a space: ");
    scanf("%f %f", &base, &height);

    float area = 0.5 * base * height;
    printf("Area of the triangle: %.2f\n", area);
    return 0;
}