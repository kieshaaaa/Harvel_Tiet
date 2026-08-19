#include <stdio.h>

int main() {
    float length, width, height, baseArea, volume;

    // Prompt the user for the dimensions of the pyramid
    printf("Enter the length of the base (l): ");
    scanf("%f", &length);
    printf("Enter the width of the base (w): ");
    scanf("%f", &width);
    printf("Enter the height of the pyramid (H): ");
    scanf("%f", &height);

    // Calculate the area of the base
    baseArea = length * width;

    // Calculate the volume of the pyramid
    volume = (baseArea * height) / 3.0;

    // Display the result
    printf("The volume of the rectangular pyramid is: %.2f\n", volume);

    return 0;
}
