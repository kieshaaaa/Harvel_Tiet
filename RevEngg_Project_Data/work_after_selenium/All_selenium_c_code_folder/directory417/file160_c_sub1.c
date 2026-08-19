#include <stdio.h>

int main() {
    float inputSide;
    float resultArea;

    printf("Enter the side length of the square: ");
    scanf("%f", &inputSide);

    resultArea = inputSide * inputSide;

    printf("Area of the square: ");
    printf("%.2f\n", resultArea);

    return 0;
}