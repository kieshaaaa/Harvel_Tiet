#include <stdio.h>

int main() {
    float side1, side2, side3, side4, perimeter;

    printf("Enter the length of side 1: ");
    scanf("%f", &side1);
    printf("Enter the length of side 2: ");
    scanf("%f", &side2);
    printf("Enter the length of side 3: ");
    scanf("%f", &side3);
    printf("Enter the length of side 4: ");
    scanf("%f", &side4);

    perimeter = side1 + side2 + side3 + side4;

    printf("Perimeter of the trapezoid: %.2f\n", perimeter);

    return 0;
}