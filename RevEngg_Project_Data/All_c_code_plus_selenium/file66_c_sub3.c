#include <stdio.h>

int main() {
    float length, breadth, area;

    printf("Length and breadth: ");
    scanf("%f %f", &length, &breadth);

    area = length * breadth;

    printf("Area: ");
    printf("%f\n", area);

    return 0;
}