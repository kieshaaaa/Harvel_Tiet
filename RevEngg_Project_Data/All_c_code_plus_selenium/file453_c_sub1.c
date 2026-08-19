#include <stdio.h>

int main() {
    float side1, side2, perim;

    printf("Enter the length of the first pair of equal sides: ");
    scanf("%f", &side1);
    printf("Enter the length of the second pair of equal sides: ");
    scanf("%f", &side2);

    perim = 2 * (side1 + side2);

    printf("Perimeter of the kite: ");
    printf("%.2f\n", perim);

    return 0;
}