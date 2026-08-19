#include <stdio.h>

int main() {
    float cubeSide;

    printf("Enter the side length of the cube: ");
    scanf("%f", &cubeSide);

    float volume = cubeSide * cubeSide * cubeSide;

    printf("Volume of the cube: ");
    printf("%.2f\n", volume);

    return 0;
}