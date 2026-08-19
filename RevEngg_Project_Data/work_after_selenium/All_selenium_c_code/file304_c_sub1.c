#include <stdio.h>

int main() {
    float sideA;
    float sideB;
    float sideC;
    float sideD;
    float perimeter;

    printf("Enter the side length of the square: ");
    scanf("%f", &sideA);

    sideB = sideA;
    sideC = sideA;
    sideD = sideA;

    perimeter = sideA + sideB + sideC + sideD;

    printf("Perimeter of the square: ");
    printf("%.2f\n", perimeter);

    return 0;
}