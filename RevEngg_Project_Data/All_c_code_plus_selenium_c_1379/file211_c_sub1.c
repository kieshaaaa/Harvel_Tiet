#include <stdio.h>
#include <math.h>

int main() {
    float side, area, phi;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    phi = (1 + sqrt(5)) / 2; // Golden ratio
    area = (sqrt(3) / 4) * (5 * side * side) / phi;

    printf("Area of the pentagon: %.2f\n", area);

    return 0;
}