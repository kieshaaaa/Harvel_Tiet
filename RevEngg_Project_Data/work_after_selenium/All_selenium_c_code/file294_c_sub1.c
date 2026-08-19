#include <stdio.h>

int main() {
    float length, width, area;

    printf("Enter dimensions of the rectangle (length width): ");
    scanf("%f %f", &length, &width);

    area = length * width;

    printf("Area: ");
    printf("%.2f\n", area);

    return 0;
}