#include <stdio.h>

int main() {
    float baseLength, height, volume;

    printf("Enter base length and height of the pyramid separated by space: ");
    scanf("%f %f", &baseLength, &height);

    volume = (baseLength * baseLength * height) / 3.0f;

    printf("Volume: ");
    printf("%.2f\n", volume);

    return 0;
}