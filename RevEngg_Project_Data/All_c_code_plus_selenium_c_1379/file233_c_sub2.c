#include <stdio.h>

int main() {
    float diagonalOne, diagonalTwo, result;

    printf("Enter the length of the first diagonal: ");
    scanf("%f", &diagonalOne);

    printf("Enter the length of the second diagonal: ");
    scanf("%f", &diagonalTwo);

    result = diagonalOne * diagonalTwo;
    result = result / 2;

    printf("Area of the rhombus: ");
    printf("%.2f\n", result);

    return 0;
}