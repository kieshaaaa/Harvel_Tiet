#include <stdio.h>

int main() {
    float length, width, height;

    printf("Base length: ");
    scanf("%f", &length);
    printf("Base width: ");
    scanf("%f", &width);
    printf("Height: ");
    scanf("%f", &height);

    printf("Volume: %.2f\n", (length * width * height) / 3.0f);

    return 0;
}