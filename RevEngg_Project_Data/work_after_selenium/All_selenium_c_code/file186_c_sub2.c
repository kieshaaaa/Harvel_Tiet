#include <stdio.h>

int main() {
    float side1, side2, side3, side4;
    float perimeter;

    printf("Enter the length of the first side: ");
    scanf("%f", &side1);

    printf("Enter the length of the second side: ");
    scanf("%f", &side2);

    printf("Enter the length of the third side: ");
    scanf("%f", &side3);

    printf("Enter the length of the fourth side: ");
    scanf("%f", &side4);

    perimeter = side1 + side2 + side3 + side4;

    printf("Perimeter of the quadrilateral: %.2f\n", perimeter);

    return 0;
}