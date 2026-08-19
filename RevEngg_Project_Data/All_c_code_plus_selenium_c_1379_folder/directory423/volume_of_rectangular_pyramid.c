#include <stdio.h>

int main() {
    float length, width, height, volume;

    // Input: length, width, and perpendicular height of the pyramid
    printf("Enter the length of the base: ");
    scanf("%f", &length);
    printf("Enter the width of the base: ");
    scanf("%f", &width);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    // Calculating volume
    volume = (length * width * height) / 3;

    // Output
    printf("Volume of the rectangular pyramid: %.2f\n", volume);

    return 0;
}
