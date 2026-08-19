#include <stdio.h>
#include <math.h>

int main() {
    float side, area;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    area = (1.73205f / 2 * 3) * (side * side); // 1.73205 is an approximation of sqrt(3)

    printf("Area of the hexagon: ");
    printf("%.2f\n", area);

    return 0;
}