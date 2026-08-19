#include <stdio.h>
#include <math.h>

int main() {
    float side, area;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    area = (5 * side * side) / (4 * tan(M_PI / 5));

    printf("Area of the pentagon: %.2f\n", area);

    return 0;
}