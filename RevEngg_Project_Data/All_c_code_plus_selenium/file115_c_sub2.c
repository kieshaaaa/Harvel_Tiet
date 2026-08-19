#include <stdio.h>

int main() {
    float sideLength;

    printf("Enter the side length of the cube: ");
    scanf("%f", &sideLength);

    printf("Volume of the cube: ");
    printf("%.2f\n", sideLength * sideLength * sideLength);

    return 0;
}