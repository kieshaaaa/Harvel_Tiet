#include <stdio.h>

int main() {
    float length, width, height, volume;

    printf("Welcome to the Pyramid Volume Calculator!\n");

    printf("Enter base length: ");
    scanf("%f", &length);
    printf("Enter base width: ");
    scanf("%f", &width);
    printf("Enter pyramid height: ");
    scanf("%f", &height);

    volume = (length * width * height) / 3;

    printf("The pyramid's volume is: %.2f cubic units.\n", volume);

    return 0;
}