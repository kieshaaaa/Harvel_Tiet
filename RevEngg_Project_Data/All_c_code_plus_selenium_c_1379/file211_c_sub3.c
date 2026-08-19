#include <stdio.h>
#include <math.h>

int main() {
    float side, area, goldenRatio, sqrt5;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    sqrt5 = sqrt(5);
    goldenRatio = (1 + sqrt5) / 2; // Calculation of the golden ratio
    area = (5 * side * side) / (4 * tan(M_PI / 5)); // Another way to relate golden ratio to pentagon area

    printf("Area of the pentagon: %.2f\n", area);

    return 0;
}