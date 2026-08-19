#include <stdio.h>

int main() {
    printf("Enter the side length of the square: ");
    float squareSide;
    scanf("%f", &squareSide);

    float squareArea = squareSide * squareSide;

    printf("Area of the square: ");
    printf("%.2f\n", squareArea);

    return 0;
}