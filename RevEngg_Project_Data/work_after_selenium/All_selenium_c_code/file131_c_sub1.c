#include <stdio.h>
#include <math.h>

int main() {
    float side, area, multiplier;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    multiplier = 3 * sqrt(3) / 2;
    area = multiplier * side * side;

    printf("Area of the hexagon: ");
    printf("%.2f\n", area);

    return 0;
}