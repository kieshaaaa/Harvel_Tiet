#include <stdio.h>

int main() {
    float baseLength, height, volume;

    // Prompt the user for the base length and height of the pyramid
    printf("Enter the base length of the square pyramid: ");
    scanf("%f", &baseLength);
    printf("Enter the height of the square pyramid: ");
    scanf("%f", &height);

    // Calculate the volume
    volume = (baseLength * baseLength * height) / 3;

    // Display the result
    printf("Volume of the square pyramid: %.2f\n", volume);

    return 0;
}
