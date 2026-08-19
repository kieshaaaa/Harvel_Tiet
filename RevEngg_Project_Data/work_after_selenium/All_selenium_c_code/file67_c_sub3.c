#include <stdio.h>

int main() {
    float side1, side2, side3, side4, side5, side6;
    float perimeter;

    printf("Enter the length of the side: ");
    scanf("%f", &side1);

    // Assuming all sides of the hexagon are of equal length
    side2 = side1;
    side3 = side1;
    side4 = side1;
    side5 = side1;
    side6 = side1;

    perimeter = side1 + side2 + side3 + side4 + side5 + side6;

    printf("Perimeter of the hexagon: ");
    printf("%.2f\n", perimeter);

    return 0;
}