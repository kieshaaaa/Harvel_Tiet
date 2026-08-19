#include <stdio.h>
#include <math.h>

int main() {
    float side, area, coefficient;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    coefficient = 2 * (1 + sqrt(2));
    area = side * side;
    area *= coefficient;

    printf("Area of the octagon: ");
    printf("%.2f\n", area);

    return 0;
}