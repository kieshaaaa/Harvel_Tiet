#include <stdio.h>

int main() {
    float sideA, sideB, totalPerimeter;

    printf("Enter lengths of the equal sides (first pair, then second pair): ");
    scanf("%f %f", &sideA, &sideB);

    totalPerimeter = 2 * (sideA + sideB);

    printf("Perimeter of the kite: ");
    printf("%.2f\n", totalPerimeter);

    return 0;
}