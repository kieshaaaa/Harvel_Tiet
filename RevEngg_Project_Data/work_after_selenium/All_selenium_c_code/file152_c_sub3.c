#include <stdio.h>

int main() {
    float dimensions[2]; // 0: base, 1: height

    printf("Enter base and height of the parallelogram separated by space: ");
    scanf("%f %f", &dimensions[0], &dimensions[1]);

    float area = dimensions[0] * dimensions[1];

    printf("Area: %.2f\n", area);

    return 0;
}