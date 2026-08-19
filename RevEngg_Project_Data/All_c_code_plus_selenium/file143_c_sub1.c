#include <stdio.h>

int main() {
    float length, width, height, volume;

    printf("Length, width, height: ");
    scanf("%f %f %f", &length, &width, &height);

    volume = (length * width * height) / 3.0f;

    printf("Pyramid volume: %.2f\n", volume);

    return 0;
}