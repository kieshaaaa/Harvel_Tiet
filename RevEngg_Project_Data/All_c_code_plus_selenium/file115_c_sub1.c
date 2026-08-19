#include <stdio.h>

int main() {
    float sideLength, square, volume;

    printf("Enter the side length of the cube: ");
    scanf("%f", &sideLength);

    square = sideLength * sideLength;
    volume = square * sideLength;

    printf("Volume of the cube: ");
    printf("%.2f\n", volume);

    return 0;
}