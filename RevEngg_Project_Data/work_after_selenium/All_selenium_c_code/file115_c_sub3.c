#include <stdio.h>

int main() {
    float sideLength;

    printf("Enter the side length of the cube: ");
    scanf("%f", &sideLength);

    sideLength = sideLength * sideLength * sideLength; // Repurposing the input variable for volume

    printf("Volume of the cube: ");
    printf("%.2f\n", sideLength);

    return 0;
}