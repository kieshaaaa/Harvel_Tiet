#include <stdio.h>
#include <math.h>

int main() {
    float side;
    float root2 = sqrt(2);
    float multiplier = 2 * (1 + root2);
    float area;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    area = multiplier * side * side;

    printf("Area of the octagon: ");
    printf("%.2f\n", area);

    return 0;
}