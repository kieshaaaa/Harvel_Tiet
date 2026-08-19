#include <stdio.h>

int main() {
    float sideLength, volume;

    // Prompt the user for the side length of the cube
    printf("Enter the side length of the cube: ");
    scanf("%f", &sideLength);

    // Calculate the volume
    volume = sideLength * sideLength * sideLength;

    // Display the result
    printf("Volume of the cube: %.2f\n", volume);

    return 0;
}
