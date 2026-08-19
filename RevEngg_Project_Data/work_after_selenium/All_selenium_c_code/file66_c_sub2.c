#include <stdio.h>

int main() {
    float length = 0.0f, breadth = 0.0f, area = 0.0f;

    printf("Input length of the rectangle: ");
    scanf("%f", &length);

    printf("Input breadth of the rectangle: ");
    scanf("%f", &breadth);

    area = length * breadth;

    printf("Calculated area: ");
    printf("%f\n", area);

    return 0;
}